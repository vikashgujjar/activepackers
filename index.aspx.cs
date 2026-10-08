using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SetupGoogleAds();
    }

    // Google AdSense slots. Configure adsense_client (ca-pub-...) and the slot IDs in Web.config.
    // Until they are set, slots stay hidden on the live site and show a placeholder when browsing locally.
    private void SetupGoogleAds()
    {
        string client = (System.Configuration.ConfigurationManager.AppSettings["adsense_client"] ?? "").Trim();
        if (client != "")
        {
            adScriptLit.Text = "<script async src=\"https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=" + HttpUtility.UrlEncode(client) + "\" crossorigin=\"anonymous\"></script>";
        }
        SetupAdSlot(adTopHolder, adTopLit, client, "adsense_slot_top");
        SetupAdSlot(adMidHolder, adMidLit, client, "adsense_slot_mid");
    }

    private void SetupAdSlot(PlaceHolder holder, Literal lit, string client, string slotKey)
    {
        string slot = (System.Configuration.ConfigurationManager.AppSettings[slotKey] ?? "").Trim();
        if (client != "" && slot != "")
        {
            lit.Text = "<ins class=\"adsbygoogle\" style=\"display:block\" data-ad-client=\"" + HttpUtility.HtmlAttributeEncode(client) + "\" data-ad-slot=\"" + HttpUtility.HtmlAttributeEncode(slot) + "\" data-ad-format=\"auto\" data-full-width-responsive=\"true\"></ins>"
                + "<script>(adsbygoogle = window.adsbygoogle || []).push({});</script>";
            holder.Visible = true;
        }
        else if (Request.IsLocal)
        {
            lit.Text = "<div class=\"hp-ad-placeholder\"><span>Google Ad slot &ndash; set <b>adsense_client</b> and <b>" + slotKey + "</b> in Web.config</span></div>";
            holder.Visible = true;
        }
    }

    protected void getquotbtn_Click(object sender, EventArgs e)
    {
        errorlbl.Visible = false;
        if (yournametxt.Text == "")
        {
            errorlbl.Text = "Kindly enter your name";
            errorlbl.Visible = true;
            return;
        }
        if (mobilenumbertxt.Text.Count() <= 9)
        {
            errorlbl.Visible = true;
            errorlbl.Text = "Invalid Mobile";
            return;
        }
        if (emailtxt.Text.Trim() != "")
        {
            bool isEmail = Regex.IsMatch(emailtxt.Text.Trim(), @"\A(?:[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)\Z");
            if (!isEmail)
            {
                errorlbl.Visible = true;
                errorlbl.Text = "Invalid Email Address";
                return;
            }
        }
        try
        {
            MailMessage mail = new MailMessage();
            SmtpClient smtpC = new SmtpClient(System.Configuration.ConfigurationManager.AppSettings["host"].ToString());
            smtpC.EnableSsl = true;
            mail.From = new MailAddress(System.Configuration.ConfigurationManager.AppSettings["fromemail"].ToString());
            mail.To.Add(System.Configuration.ConfigurationManager.AppSettings["toemail"].ToString());
            mail.IsBodyHtml = true;
            mail.Body = "Enquiry from Website: <br /><b>Customer Name:</b> " + yournametxt.Text.Trim().ToString() + "<br /><b>Customer Mobile:</b> " + mobilenumbertxt.Text.Trim().ToString() + "<br /><b>Customer Email Address:</b> " + emailtxt.Text.Trim().ToString() + "<br /><b>Relocate From:</b> " + relocatefromtxt.Text.Trim().ToString() + "<br /><b>Relocate To:</b> " + relocatetotxt.Text.Trim().ToString() + "<br /><b>Moving Date:</b> " + relocationdatetxt.Text.Trim().ToString();
            mail.Subject = "New Enquiry from Website";
            smtpC.Port = Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["port"].ToString());
            string pas = (System.Configuration.ConfigurationManager.AppSettings["emailpassword"].ToString());
            smtpC.UseDefaultCredentials = false;
            smtpC.Credentials = new System.Net.NetworkCredential(System.Configuration.ConfigurationManager.AppSettings["fromemail"].ToString(), pas);
            smtpC.Send(mail);
            Response.Redirect("thankyou.aspx");
        }
        catch (Exception ex)
        {
            errorlbl.Visible = true;
            errorlbl.Text = ex.Message;
        }
    }

}