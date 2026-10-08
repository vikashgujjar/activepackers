using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
            Response.Redirect("../thankyou.aspx");
        }
        catch (Exception ex)
        {
            errorlbl.Visible = true;
            errorlbl.Text = "Error while sending details.";
        }
    }

}