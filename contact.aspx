<%@ Page Title="Contact Us - Active Packers & Movers" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="description" content="Contact Active Packers &amp; Movers, Chandigarh. Call +91 9217532501, email activepackersmoversindia@gmail.com or visit Plot No. 15/3, Second Floor, Sector 26, Chandigarh &ndash; 160019." />
    <link href="css/home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- ================= PAGE HEADER ================= -->
    <section class="ap-page-hero" style="background-image: url(images/main-slider-2.jpg)">
        <div class="container">
            <h1>Contact Us</h1>
            <ul class="ap-crumbs">
                <li><a href="../">Home</a></li>
                <li>Contact Us</li>
            </ul>
        </div>
    </section>

<div class="hp">

    <section class="hp-section">
        <div class="container">

            <!-- ================= CONTACT INFO ================= -->
            <div class="hp-contact-cards">
                <div class="hp-ccard" data-reveal>
                    <span class="hp-ccard-ic"><i class="fa fa-envelope"></i></span>
                    <h3>Email Here</h3>
                    <p><a href="mailto:activepackersmoversindia@gmail.com">activepackersmoversindia@gmail.com</a></p>
                </div>
                <div class="hp-ccard" data-reveal>
                    <span class="hp-ccard-ic"><i class="fa fa-phone"></i></span>
                    <h3>Call Here</h3>
                    <p><a href="tel:09217532501">+91 9217532501</a></p>
                </div>
                <div class="hp-ccard" data-reveal>
                    <span class="hp-ccard-ic"><i class="fa fa-map-marker"></i></span>
                    <h3>Visite Here</h3>
                    <p>Plot No. 15/3, Second Floor, Sector 26, Chandigarh &ndash; 160019</p>
                </div>
            </div>

            <!-- ================= CONTACT FORM ================= -->
            <div class="hp-form-card" data-reveal>
                <div class="hp-form-main">
                    <span class="hp-kicker">Request a Call Back</span>
                    <h2>Get in touch</h2>

                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="hp-cform">
                                <label class="hp-cfield"><i class="fa fa-user"></i><asp:TextBox ID="yournametxt" runat="server" placeholder="Name" CssClass="hp-input"></asp:TextBox></label>
                                <label class="hp-cfield"><i class="fa fa-phone"></i><asp:TextBox ID="mobilenumbertxt" runat="server" placeholder="Phone" TextMode="Phone" MaxLength="13" CssClass="hp-input"></asp:TextBox></label>
                                <label class="hp-cfield"><i class="fa fa-envelope-o"></i><asp:TextBox ID="emailtxt" runat="server" placeholder="Email" CssClass="hp-input"></asp:TextBox></label>
                                <label class="hp-cfield"><i class="fa fa-map-marker"></i><asp:TextBox ID="relocatefromtxt" runat="server" placeholder="Relocate From" CssClass="hp-input"></asp:TextBox></label>
                                <label class="hp-cfield"><i class="fa fa-map-marker"></i><asp:TextBox ID="relocatetotxt" runat="server" placeholder="Relocate To" CssClass="hp-input"></asp:TextBox></label>
                                <label class="hp-cfield"><i class="fa fa-calendar"></i><asp:TextBox ID="relocationdatetxt" runat="server" placeholder="Relocation Date" CssClass="hp-input" onfocus="this.type='date'"></asp:TextBox></label>
                            </div>
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                <ProgressTemplate>
                                    <div class="hp-form-progress"><i class="fa fa-spinner fa-spin"></i> Please wait...</div>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                            <asp:Label ID="errorlbl" CssClass="hp-error" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:Button ID="getquotbtn" CssClass="hp-submit" OnClick="getquotbtn_Click" runat="server" Text="Submit Details" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="hp-form-side" style="background-image: url(images/contact-info.jpg)" aria-hidden="true"></div>
            </div>

            <!-- ================= MAP ================= -->
            <div class="hp-map" data-reveal>
                <iframe title="Active Packers &amp; Movers office location" loading="lazy" referrerpolicy="no-referrer-when-downgrade"
                    src="https://maps.google.com/maps?q=Plot%20No.%2015%2F3%2C%20Sector%2026%2C%20Chandigarh%20160019&amp;z=15&amp;output=embed"></iframe>
            </div>
        </div>
    </section>

</div>
</asp:Content>
