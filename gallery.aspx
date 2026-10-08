<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="description" content="Gallery of Active Packers &amp; Movers, Chandigarh &ndash; photos of our packing, loading, household goods shifting and vehicle transportation work." />
    <link href="css/home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- ================= PAGE HEADER ================= -->
    <section class="ap-page-hero" style="background-image: url(gallery/glry7.jpeg)">
        <div class="container">
            <h1>Gallery</h1>
            <ul class="ap-crumbs">
                <li><a href="index.aspx">Home</a></li>
                <li>Gallery</li>
            </ul>
        </div>
    </section>

<div class="hp">

    <!-- ================= PHOTO GRID (opens in lightbox via .projects-popup-link) ================= -->
    <section class="hp-section">
        <div class="container">
            <div class="hp-head" data-reveal>
                <span class="hp-kicker">Our Gallery</span>
                <h2>Moments From Our Recent Moves</h2>
            </div>
            <div class="hp-masonry">
                <a class="projects-popup-link" href="gallery/glry1.jpeg" data-reveal><img src="gallery/glry1.jpeg" alt="Active Packers &amp; Movers gallery photo 1" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry2.jpeg" data-reveal><img src="gallery/glry2.jpeg" alt="Active Packers &amp; Movers gallery photo 2" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry3.jpeg" data-reveal><img src="gallery/glry3.jpeg" alt="Active Packers &amp; Movers gallery photo 3" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry4.jpeg" data-reveal><img src="gallery/glry4.jpeg" alt="Active Packers &amp; Movers gallery photo 4" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry5.jpeg" data-reveal><img src="gallery/glry5.jpeg" alt="Active Packers &amp; Movers gallery photo 5" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry6.jpeg" data-reveal><img src="gallery/glry6.jpeg" alt="Active Packers &amp; Movers gallery photo 6" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry7.jpeg" data-reveal><img src="gallery/glry7.jpeg" alt="Active Packers &amp; Movers gallery photo 7" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry8.jpeg" data-reveal><img src="gallery/glry8.jpeg" alt="Active Packers &amp; Movers gallery photo 8" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry9.jpeg" data-reveal><img src="gallery/glry9.jpeg" alt="Active Packers &amp; Movers gallery photo 9" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry10.jpeg" data-reveal><img src="gallery/glry10.jpeg" alt="Active Packers &amp; Movers gallery photo 10" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry11.jpeg" data-reveal><img src="gallery/glry11.jpeg" alt="Active Packers &amp; Movers gallery photo 11" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry12.jpeg" data-reveal><img src="gallery/glry12.jpeg" alt="Active Packers &amp; Movers gallery photo 12" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry13.jpeg" data-reveal><img src="gallery/glry13.jpeg" alt="Active Packers &amp; Movers gallery photo 13" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry14.jpeg" data-reveal><img src="gallery/glry14.jpeg" alt="Active Packers &amp; Movers gallery photo 14" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry15.jpeg" data-reveal><img src="gallery/glry15.jpeg" alt="Active Packers &amp; Movers gallery photo 15" loading="lazy" /></a>
                <a class="projects-popup-link" href="gallery/glry16.jpeg" data-reveal><img src="gallery/glry16.jpeg" alt="Active Packers &amp; Movers gallery photo 16" loading="lazy" /></a>
            </div>
        </div>
    </section>

    <!-- ================= CALL TO ACTION ================= -->
    <section class="hp-section hp-cta-sec">
        <div class="container">
            <div class="hp-cta-panel" data-reveal>
                <div>
                    <span class="hp-kicker hp-kicker-light">Request a Call Back</span>
                    <h2>Get A Free Quote Today.</h2>
                </div>
                <div class="hp-cta-panel-btns">
                    <a href="tel:09217532501" class="ap-btn ap-btn-orange"><i class="fa fa-phone"></i> Call Us</a>
                    <a href="contact.aspx" class="ap-btn ap-btn-white">Contact Us</a>
                </div>
            </div>
        </div>
    </section>

</div>
</asp:Content>