<%@ Page Title="Packers and Movers in Chandigarh | Welcome to Active Packers And Movers" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta name="description" content="Active Packers &amp; Movers &ndash; trusted packers and movers in Chandigarh since 2009. Household goods shifting, office shifting, car &amp; bike transportation, packing, loading &amp; unloading across India. Call 09217532501 for a free quote." />
    <meta name="keywords" content="packers and movers in Chandigarh, movers and packers Chandigarh, best packers and movers Chandigarh, household goods shifting Chandigarh, home shifting services Chandigarh, office shifting Chandigarh, car transportation Chandigarh, bike transportation Chandigarh, furniture shifting Chandigarh, loading and unloading services, packing and moving services, transportation insurance, packers and movers Mohali, packers and movers Panchkula, packers and movers Zirakpur, local shifting Chandigarh, domestic relocation, international goods shifting, warehouse services" />
    <meta property="og:title" content="Packers and Movers in Chandigarh | Active Packers &amp; Movers" />
    <meta property="og:description" content="Trusted packers and movers in Chandigarh since 2009 &ndash; household, office, car and bike shifting across India." />
    <meta property="og:type" content="website" />
    <!-- Structured data: business details for Google -->
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "MovingCompany",
      "name": "Active Packers & Movers",
      "description": "Packers and movers in Chandigarh offering household goods shifting, office shifting, packing and moving, loading and unloading, home furniture shifting, car and bike transportation and transportation insurance.",
      "foundingDate": "2009",
      "telephone": "+91-9217532501",
      "email": "activepackersmoversindia@gmail.com",
      "image": "active-packers-logo.png",
      "address": {
        "@type": "PostalAddress",
        "streetAddress": "Plot No. 15/3, Second Floor, Sector 26",
        "addressLocality": "Chandigarh",
        "postalCode": "160019",
        "addressCountry": "IN"
      },
      "areaServed": ["Chandigarh", "Mohali", "Panchkula", "Zirakpur", "India"],
      "openingHours": "Mo-Su 00:00-23:59",
      "hasOfferCatalog": {
        "@type": "OfferCatalog",
        "name": "Moving Services",
        "itemListElement": [
          { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Packing & Moving" } },
          { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Loading & Unloading" } },
          { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Household Goods Shifting" } },
          { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Transportation Insurance" } },
          { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Home Furniture Shifting" } },
          { "@type": "Offer", "itemOffered": { "@type": "Service", "name": "Car/Bike Transportation" } }
        ]
      }
    }
    </script>
    <!-- Structured data: FAQ (must match the visible FAQ text below) -->
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "FAQPage",
      "mainEntity": [
        { "@type": "Question", "name": "How much does shifting cost?", "acceptedAnswer": { "@type": "Answer", "text": "The price depends on the volume of goods, the distance, and the services you choose (packing, loading, insurance, vehicle transport). Share your details in the quote form and we'll give you a clear, fixed price." } },
        { "@type": "Question", "name": "Do you shift outside Chandigarh?", "acceptedAnswer": { "@type": "Answer", "text": "Yes. We're based in Chandigarh and move households, offices and vehicles to destinations across India, and also handle international goods shifting." } },
        { "@type": "Question", "name": "Are my goods insured during transit?", "acceptedAnswer": { "@type": "Answer", "text": "We offer transportation insurance that protects your goods against unforeseen loss or damage on the road. Ask our team to include it in your quote." } },
        { "@type": "Question", "name": "Can you move my car or bike too?", "acceptedAnswer": { "@type": "Answer", "text": "Yes. Cars and bikes are loaded with secure fittings in suitable carriers for a damage-free journey, either along with your household goods or on their own." } },
        { "@type": "Question", "name": "How early should I book?", "acceptedAnswer": { "@type": "Answer", "text": "Booking a few days ahead helps us plan the right vehicle and crew, especially at month-end and weekends. For urgent moves, call us - we'll do our best to accommodate you." } }
      ]
    }
    </script>
    <link href="css/home.css" rel="stylesheet" />
    <!-- Google AdSense loader (rendered only when adsense_client is set in Web.config) -->
    <asp:Literal ID="adScriptLit" runat="server" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="hp">

    <!-- ================= HERO (Main Slider) ================= -->
    <section class="hp-hero">
        <div class="hp-slides" id="hpSlides" aria-hidden="true">
            <div class="hp-slide is-active" style="background-image: url(images/main-slider-1.jpg)"></div>
            <div class="hp-slide" style="background-image: url(images/main-slider-2.jpg)"></div>
            <div class="hp-slide" style="background-image: url(images/main-slider-3.jpg)"></div>
        </div>
        <div class="hp-hero-overlay" aria-hidden="true"></div>
        <div class="hp-slide-dots" id="hpSlideDots">
            <button type="button" class="is-active" aria-label="Show slide 1"></button>
            <button type="button" aria-label="Show slide 2"></button>
            <button type="button" aria-label="Show slide 3"></button>
        </div>
        <svg class="hp-hero-route" viewBox="0 0 1440 700" preserveAspectRatio="none" aria-hidden="true">
            <path d="M-40 560 C 240 420, 380 640, 640 500 S 1000 180, 1180 300 S 1400 360, 1500 120" />
        </svg>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-7 hp-hero-copy">
                    <!-- one caption per slide, switched together with the background -->
                    <div class="hp-captions" id="hpCaptions">
                        <div class="hp-caption is-active">
                            <span class="hp-caption-title">Welcome to</span>
                            <h1>Active Packers &amp; Movers</h1>
                        </div>
                        <div class="hp-caption">
                            <span class="hp-caption-title">Best</span>
                            <h2>Household Goods Shifting Services</h2>
                        </div>
                        <div class="hp-caption">
                            <span class="hp-caption-title">Best</span>
                            <h2>Office Goods Shifting Services</h2>
                        </div>
                    </div>
                    <!-- shuffling service keywords (order randomised by home.js) -->
                    <p class="hp-kw-line">
                        <i class="fa fa-check-circle"></i>
                        <span class="hp-kw" id="hpKw">
                            <span class="is-active">Packers and Movers in Chandigarh</span>
                            <span>Household Goods Shifting in Chandigarh</span>
                            <span>Office Shifting Services</span>
                            <span>Car Transportation in Chandigarh</span>
                            <span>Bike Transportation Services</span>
                            <span>Home Furniture Shifting</span>
                            <span>Packing &amp; Moving Services</span>
                            <span>Loading &amp; Unloading Services</span>
                            <span>Local Shifting in Mohali &amp; Panchkula</span>
                            <span>Home Shifting in Zirakpur</span>
                            <span>Domestic &amp; International Relocation</span>
                        </span>
                    </p>
                    <div class="hp-hero-cta">
                        <a href="#quote" class="ap-btn ap-btn-orange hp-btn-lg">Get A Free Quote Today. <i class="fa fa-arrow-right"></i></a>
                        <a href="tel:09217532501" class="hp-hero-call">
                            <span class="hp-hero-call-ic"><i class="fa fa-phone"></i></span>
                            <span><small>Call to Ask Any Question</small><b>09217532501</b></span>
                        </a>
                    </div>
                </div>

                <!-- Request Quote: consignment-ticket style -->
                <div class="col-lg-5">
                    <div class="hp-ticket" id="quote">
                        <div class="hp-ticket-top">
                            <span><i class="fa fa-phone"></i> Request a Call Back</span>
                        </div>
                        <h2 class="hp-ticket-title">Get A Free Quote Today.</h2>
                        <div class="hp-ticket-route" aria-hidden="true">
                            <small>Relocate From</small>
                            <div class="hp-ticket-line"><i class="fa fa-truck"></i></div>
                            <small>Relocate To</small>
                        </div>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="hp-fields">
                                    <asp:TextBox ID="yournametxt" placeholder="Your Name*" runat="server" CssClass="hp-input"></asp:TextBox>
                                    <asp:TextBox ID="mobilenumbertxt" placeholder="Mobile No*" runat="server" TextMode="Phone" MaxLength="13" CssClass="hp-input"></asp:TextBox>
                                    <asp:TextBox ID="emailtxt" placeholder="Email Address" runat="server" CssClass="hp-input hp-span-2"></asp:TextBox>
                                    <asp:TextBox ID="relocatefromtxt" placeholder="Relocate From" runat="server" CssClass="hp-input"></asp:TextBox>
                                    <asp:TextBox ID="relocatetotxt" placeholder="Relocate To" runat="server" CssClass="hp-input"></asp:TextBox>
                                    <asp:TextBox ID="relocationdatetxt" placeholder="Relocation Date" runat="server" CssClass="hp-input hp-span-2" onfocus="this.type='date'"></asp:TextBox>
                                </div>
                                <asp:Label ID="errorlbl" runat="server" Text="" CssClass="hp-error" Visible="false"></asp:Label>
                                <div class="hp-ticket-tear" aria-hidden="true"></div>
                                <asp:Button ID="getquotbtn" OnClick="getquotbtn_Click" CssClass="hp-submit" runat="server" Text="Submit Details" />
                                <div class="hp-ticket-foot"><span class="hp-barcode" aria-hidden="true"></span></div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ================= TICKER ================= -->
    <div class="hp-ticker" aria-hidden="true">
        <div class="hp-ticker-track">
            <span>Packers and Movers in Chandigarh</span><span>Household Goods Shifting</span><span>Office Goods Shifting</span><span>Car Transportation</span><span>Heavy Machinery Shifting</span><span>Warehouse Service</span><span>Bike Transportation</span><span>Loading &amp; Unloading</span><span>International Goods Shifting</span><span>Packing &amp; Moving</span><span>Transportation Insurance</span><span>Home Furniture Shifting</span><span>Local Shifting Tricity</span>
        </div>
    </div>

    <!-- ================= OUR FEATURES ================= -->
    <section class="hp-features-sec">
        <div class="container">
            <div class="hp-feature-grid">
                <div class="hp-feature" data-reveal>
                    <span class="hp-feature-num">01</span>
                    <span class="hp-feature-ic"><i class="fa fa-users"></i></span>
                    <h3>01. Expert Staff</h3>
                    <p>Our trained and experienced staff handles every item with care, ensuring safe packing and hassle-free relocation.</p>
                </div>
                <div class="hp-feature" data-reveal>
                    <span class="hp-feature-num">02</span>
                    <span class="hp-feature-ic"><i class="fa fa-cubes"></i></span>
                    <h3>02. Logistic Services</h3>
                    <p>We offer complete logistic solutions with proper planning and coordination for smooth, on-time delivery.</p>
                </div>
                <div class="hp-feature" data-reveal>
                    <span class="hp-feature-num">03</span>
                    <span class="hp-feature-ic"><i class="fa fa-truck"></i></span>
                    <h3>03. Ground Shipping</h3>
                    <p>Our fleet of well-maintained vehicles ensures secure and timely ground shipping across the country.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ================= STATS ================= -->
    <section class="hp-stats">
        <div class="container">
            <div class="hp-stats-grid">
                <div data-reveal><strong>2009</strong><span>Serving since</span></div>
                <div data-reveal><strong><span data-count="10000" data-suffix="+">10,000+</span></strong><span>Homes shifted</span></div>
                <div data-reveal><strong>Pan-India</strong><span>Delivery network</span></div>
                <div data-reveal><strong>24<small>x</small>7</strong><span>Customer support</span></div>
            </div>
        </div>
    </section>

    <!-- ================= GOOGLE AD: TOP ================= -->
    <asp:PlaceHolder ID="adTopHolder" runat="server" Visible="false">
        <section class="hp-ad">
            <div class="container">
                <span class="hp-ad-label">Advertisement</span>
                <asp:Literal ID="adTopLit" runat="server" />
            </div>
        </section>
    </asp:PlaceHolder>

    <!-- ================= OUR INTRODUCTION ================= -->
    <section class="hp-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6" data-reveal>
                    <div class="hp-intro-img">
                        <img src="images/about-img.jpg" alt="Packers and movers in Chandigarh - Active Packers &amp; Movers team loading goods" loading="lazy" />
                        <div class="hp-intro-badge">More than 10,000+ homes<br />were shiftted.</div>
                    </div>
                </div>
                <div class="col-lg-6" data-reveal>
                    <span class="hp-kicker">Our introduction</span>
                    <h2 class="hp-h2">Welcome to Active Packers &amp; Movers</h2>
                    <div class="hp-intro-text">
                        <p>Active Packers &amp; Movers &ndash; Chandigarh is a sole proprietorship Company that was perceived in 2009 at Chandigarh, with a maxim of giving all around oversaw benefits in the most ideal way. With various years of across the board understanding and information, Packers and Movers Chandigarh (Active Packers &amp; Movers) is currently turned out to be outstanding specialist organization in our fitting recorded.</p>
                        <p>Movers and Packers Chandigarh (Active Packers &amp; Movers) offers the tried and true moving administrations starting with one place then onto the next place as we are master in moving. Packers Movers in Chandigarh (Active Packers &amp; Movers) has a group of solid, energetic and mindfulness individuals and load administrations, make certain safe and on time arrival of products anyplace in India.</p>
                    </div>
                    <ul class="hp-checklist">
                        <li>Household Goods Shifting</li>
                        <li>Cat Transportation</li>
                        <li>Office Goods Shifting</li>
                        <li>Bike Transportation</li>
                        <li>Heavy Machinery Shifting</li>
                        <li>Loading &amp; Unloading</li>
                        <li>Warehouse Service</li>
                        <li>International Goods Shifting</li>
                    </ul>
                    <a href="tel:09217532501" class="hp-intro-call">
                        <span class="hp-intro-call-ic"><i class="fa fa-phone"></i></span>
                        <span><small>Call to Ask Any Question</small><b>09217532501</b></span>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- ================= OUR SERVICES (bento) ================= -->
    <section class="hp-section hp-tint">
        <div class="container">
            <div class="hp-head" data-reveal>
                <span class="hp-kicker">Our Services</span>
                <h2>Let's Have a Look At Our Transportation Services.</h2>
            </div>
            <div class="hp-bento">
                <a class="hp-tile hp-tile-xl" href="packing-and-moving.aspx" data-reveal>
                    <img src="services/packing-moving.jpg" alt="Packing & Moving" loading="lazy" />
                    <span class="hp-tile-go"><i class="fa fa-arrow-right"></i></span>
                    <div class="hp-tile-body">
                        <h3>Packing &amp; Moving</h3>
                        <p>We use high quality packing material to keep your goods safe during transit. Our team ensures quick and damage-free moving.</p>
                        <span class="hp-tile-more">More..</span>
                    </div>
                </a>
                <a class="hp-tile" href="loading-and-unloading.aspx" data-reveal>
                    <img src="services/loading-unloading.jpg" alt="Loading & Unloading" loading="lazy" />
                    <span class="hp-tile-go"><i class="fa fa-arrow-right"></i></span>
                    <div class="hp-tile-body"><h3>Loading &amp; Unloading</h3><p>Our skilled workers load and unload your belongings carefully and efficiently, saving your time and effort.</p></div>
                </a>
                <a class="hp-tile" href="household-goods-shifting.aspx" data-reveal>
                    <img src="services/household-goods-shifting.jpg" alt="Household Goods Shifting" loading="lazy" />
                    <span class="hp-tile-go"><i class="fa fa-arrow-right"></i></span>
                    <div class="hp-tile-body"><h3>Household Goods Shifting</h3><p>We shift your household goods safely from one place to another with proper handling and care at every step.</p></div>
                </a>
                <a class="hp-tile" href="transportaton-insurance.aspx" data-reveal>
                    <img src="services/transportation-insurance.jpg" alt="Transportation Insurance" loading="lazy" />
                    <span class="hp-tile-go"><i class="fa fa-arrow-right"></i></span>
                    <div class="hp-tile-body"><h3>Transportation Insurance</h3><p>We provide transportation insurance to protect your goods against any unforeseen loss or damage during transit.</p></div>
                </a>
                <a class="hp-tile" href="home-furniture-shifting.aspx" data-reveal>
                    <img src="services/furniture-moving.jpg" alt="Home Furniture Shifting" loading="lazy" />
                    <span class="hp-tile-go"><i class="fa fa-arrow-right"></i></span>
                    <div class="hp-tile-body"><h3>Home Furniture Shifting</h3><p>Our team dismantles, packs and reassembles your furniture with care to prevent scratches or damage.</p></div>
                </a>
                <a class="hp-tile hp-tile-wide" href="car-bike-transportation.aspx" data-reveal>
                    <img src="services/car-bike-transportation.jpg" alt="Car/Bike Transportation" loading="lazy" />
                    <span class="hp-tile-go"><i class="fa fa-arrow-right"></i></span>
                    <div class="hp-tile-body"><h3>Car/Bike Transportation</h3><p>We transport your car and bike safely with proper loading and secure fittings for a damage-free journey.</p></div>
                </a>
                <div class="hp-tile hp-tile-wide hp-tile-cta" data-reveal>
                    <div>
                        <h3>Not sure what you need?</h3>
                        <p>Tell us what you're moving and we'll suggest the right plan.</p>
                    </div>
                    <a href="https://api.whatsapp.com/send?phone=919217532501&text=Hi" class="ap-btn ap-btn-white"><i class="fa fa-whatsapp"></i> WhatsApp</a>
                </div>
            </div>
        </div>
    </section>

    <!-- ================= JOURNEY (scroll-driven truck) ================= -->
    <section class="hp-journey" id="hpJourney">
        <div class="container">
            <div class="hp-head" data-reveal>
                <span class="hp-kicker hp-kicker-light">How it works</span>
                <h2>Your move, start to finish.</h2>
                <p>Four simple stops. Scroll to follow the truck.</p>
            </div>
            <div class="hp-road-wrap">
                <div class="hp-road"><div class="hp-road-fill" id="hpRoadFill"></div><span class="hp-road-truck" id="hpRoadTruck"><i class="fa fa-truck"></i></span></div>
                <ol class="hp-stops" id="hpStops">
                    <li><span class="hp-stop-pin">1</span><h3>Request a quote</h3><p>Call, WhatsApp or fill the form with your move details.</p></li>
                    <li><span class="hp-stop-pin">2</span><h3>We pack</h3><p>Every item packed with quality material on your chosen date.</p></li>
                    <li><span class="hp-stop-pin">3</span><h3>We transport</h3><p>Well-maintained vehicles carry your goods safely.</p></li>
                    <li><span class="hp-stop-pin">4</span><h3>We deliver</h3><p>Unloading, unpacking and furniture reassembly at your new place.</p></li>
                </ol>
            </div>
        </div>
    </section>

    <!-- ================= DIY vs ACTIVE ================= -->
    <section class="hp-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5" data-reveal>
                    <span class="hp-kicker">Why Active</span>
                    <h2 class="hp-h2">Moving yourself vs. moving with us.</h2>
                    <p class="hp-muted">Since 2009 our energetic, careful team has made sure goods arrive safely and on time, anywhere in India.</p>
                    <div class="hp-why-img">
                        <img src="images/about-img2.jpg" alt="Home shifting services in Chandigarh" loading="lazy" />
                        <div class="hp-why-badge"><i class="fa fa-shield"></i><span><b>Insured</b> transit available</span></div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="hp-compare" data-reveal>
                        <div class="hp-compare-head">
                            <span></span>
                            <span class="hp-compare-diy">Do it yourself</span>
                            <span class="hp-compare-us"><img src="active-packers-logo.png" alt="Active" /></span>
                        </div>
                        <div class="hp-compare-row"><b>Packing</b><span><i class="fa fa-times"></i> Old boxes &amp; newspaper</span><span><i class="fa fa-check"></i> Quality multi-layer packing</span></div>
                        <div class="hp-compare-row"><b>Vehicle</b><span><i class="fa fa-times"></i> Hunt for a truck</span><span><i class="fa fa-check"></i> Well-maintained fleet</span></div>
                        <div class="hp-compare-row"><b>Manpower</b><span><i class="fa fa-times"></i> Friends &amp; favours</span><span><i class="fa fa-check"></i> Trained, experienced staff</span></div>
                        <div class="hp-compare-row"><b>Furniture</b><span><i class="fa fa-times"></i> Scratches &amp; broken parts</span><span><i class="fa fa-check"></i> Dismantle &amp; reassemble</span></div>
                        <div class="hp-compare-row"><b>Protection</b><span><i class="fa fa-times"></i> You bear every loss</span><span><i class="fa fa-check"></i> Transit insurance</span></div>
                        <div class="hp-compare-row"><b>Your time</b><span><i class="fa fa-times"></i> Days of stress</span><span><i class="fa fa-check"></i> One call, we handle it</span></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ================= GOOGLE AD: MIDDLE ================= -->
    <asp:PlaceHolder ID="adMidHolder" runat="server" Visible="false">
        <section class="hp-ad hp-ad-tight">
            <div class="container">
                <span class="hp-ad-label">Advertisement</span>
                <asp:Literal ID="adMidLit" runat="server" />
            </div>
        </section>
    </asp:PlaceHolder>

    <!-- ================= OUR GALLERY ================= -->
    <section class="hp-section hp-tint">
        <div class="container">
            <div class="hp-head-split" data-reveal>
                <div>
                    <span class="hp-kicker">Our Gallery</span>
                    <h2>Moments From Our Recent Moves</h2>
                </div>
                <div class="hp-strip-nav">
                    <button type="button" class="hp-strip-btn" data-dir="-1" aria-label="Previous photos"><i class="fa fa-angle-left"></i></button>
                    <button type="button" class="hp-strip-btn" data-dir="1" aria-label="Next photos"><i class="fa fa-angle-right"></i></button>
                    <a href="gallery.aspx" class="hp-link">Our Gallery <i class="fa fa-arrow-right"></i></a>
                </div>
            </div>
        </div>
        <div class="hp-strip" id="hpStrip">
            <a class="projects-popup-link" href="gallery/glry5.jpeg"><img src="gallery/glry5.jpeg" alt="Bike packed for bike transportation in Chandigarh" loading="lazy" /></a>
            <a class="projects-popup-link" href="gallery/glry6.jpeg"><img src="gallery/glry6.jpeg" alt="Scooter wrapped for safe transportation" loading="lazy" /></a>
            <a class="projects-popup-link" href="gallery/glry7.jpeg"><img src="gallery/glry7.jpeg" alt="Loading household goods into truck - loading and unloading services" loading="lazy" /></a>
            <a class="projects-popup-link" href="gallery/glry8.jpeg"><img src="gallery/glry8.jpeg" alt="Furniture packed for home furniture shifting" loading="lazy" /></a>
            <a class="projects-popup-link" href="gallery/glry9.jpeg"><img src="gallery/glry9.jpeg" alt="Household goods shifting in Chandigarh - packed items" loading="lazy" /></a>
            <a class="projects-popup-link" href="gallery/glry10.jpeg"><img src="gallery/glry10.jpeg" alt="Packing and moving services by Active Packers &amp; Movers" loading="lazy" /></a>
        </div>
    </section>

    <!-- ================= TESTIMONIALS ================= -->
    <section class="hp-section hp-reviews-sec">
        <div class="container">
            <div class="hp-head" data-reveal>
                <span class="hp-kicker">Testimonials</span>
                <h2>What Our Customers Say</h2>
            </div>
        </div>
        <div class="hp-marquee">
            <div class="hp-marquee-track">
                <figure><blockquote>We are very happy with the services provided by Active Packers &amp; Movers the best service provided. Team also was good who was send for packing, loading and unloading in time.</blockquote><figcaption><span>R</span>Raj</figcaption></figure>
                <figure><blockquote>Quiet professional and value for money in their services. Fixed rates however quiet legitimate that you wouldn't get better value elsewhere. Will definitely use their services and refer to others, if needed.</blockquote><figcaption><span>V</span>Vijay</figcaption></figure>
                <figure><blockquote>Best packers and movers at lowest price point .they really best in this field.You will be happy by thier services and you never any chance of complain about thier service.</blockquote><figcaption><span>T</span>T S Rao</figcaption></figure>
            </div>
        </div>
        <div class="hp-marquee hp-marquee-rev">
            <div class="hp-marquee-track">
                <figure><blockquote>I shifted my things to Chandigarh i liked there work and they provided a good service they packed each every item very carefully.</blockquote><figcaption><span>G</span>Gopal</figcaption></figure>
                <figure><blockquote>Thanks to shifting i had great experience from packing to delivery every thing has updating me thanks to Active Packers and Movers.</blockquote><figcaption><span>S</span>Seshu</figcaption></figure>
                <figure><blockquote>I am very happy and completely 100% satisfied with Active packers and movers they are very professional, polite and humble with young employees.</blockquote><figcaption><span>R</span>Ruchi</figcaption></figure>
            </div>
        </div>
    </section>

    <!-- ================= SEO CONTENT: Packers and Movers in Chandigarh ================= -->
    <section class="hp-section hp-seo">
        <div class="container">
            <div class="hp-head" data-reveal>
                <span class="hp-kicker">Packers and Movers in Chandigarh</span>
                <h2>Trusted Packers and Movers in Chandigarh for Home, Office &amp; Vehicle Shifting</h2>
                <p>Looking for reliable <strong>packers and movers in Chandigarh</strong>? Active Packers &amp; Movers has been helping families and businesses relocate since 2009. From our office in Sector 26, Chandigarh, our trained team provides complete <strong>home shifting</strong>, <strong>office shifting</strong>, <a href="packing-and-moving.aspx">packing and moving</a>, <a href="loading-and-unloading.aspx">loading and unloading</a>, and <a href="car-bike-transportation.aspx">car and bike transportation</a> services &ndash; locally within the Tricity and to any city in India.</p>
            </div>

            <!-- keyword content cards (same card style as Our Features) -->
            <div class="hp-feature-grid hp-seo-cards">
                <div class="hp-feature hp-seo-card" data-reveal>
                    <span class="hp-feature-ic"><i class="fa fa-home"></i></span>
                    <h3>Household Goods &amp; Furniture Shifting</h3>
                    <p>As experienced <strong>movers and packers in Chandigarh</strong>, we use high quality packing material, careful handling and well-maintained vehicles to keep your goods safe in transit. Our <a href="household-goods-shifting.aspx">household goods shifting</a> service covers everything from kitchen items and electronics to beds, sofas and wardrobes, with <a href="home-furniture-shifting.aspx">home furniture shifting</a> &ndash; dismantling, packing and reassembly &ndash; whenever you need it.</p>
                </div>
                <div class="hp-feature hp-seo-card" data-reveal>
                    <span class="hp-feature-ic"><i class="fa fa-car"></i></span>
                    <h3>Car, Bike &amp; Specialised Moves</h3>
                    <p>Moving your vehicle? Our <strong>car transportation in Chandigarh</strong> and <strong>bike transportation</strong> services use secure loading and fittings for a damage-free journey. We also offer <a href="transportaton-insurance.aspx">transportation insurance</a>, warehouse service and heavy machinery shifting, making us a one-stop relocation company for both <strong>domestic and international goods shifting</strong>.</p>
                </div>
                <div class="hp-feature hp-seo-card" data-reveal>
                    <span class="hp-feature-ic"><i class="fa fa-map-signs"></i></span>
                    <h3>Local &amp; Long-Distance Relocation</h3>
                    <p>Whether you need <strong>local shifting in Chandigarh, Mohali, Panchkula or Zirakpur</strong>, or long-distance relocation from Chandigarh to Delhi, Mumbai, Bangalore or anywhere in India, call <a href="tel:09217532501">09217532501</a> for a free quote. Our 24x7 support team will plan your move from start to finish.</p>
                </div>
            </div>

            <!-- coverage panel (navy, same style as How it works) -->
            <div class="hp-coverage" data-reveal>
                <div class="hp-coverage-col">
                    <h3><i class="fa fa-map-marker"></i> Local Shifting Areas (Tricity)</h3>
                    <ul class="hp-cities">
                        <li><span class="hp-city-ic"><i class="fa fa-map-marker"></i></span>Chandigarh</li>
                        <li><span class="hp-city-ic"><i class="fa fa-map-marker"></i></span>Mohali</li>
                        <li><span class="hp-city-ic"><i class="fa fa-map-marker"></i></span>Panchkula</li>
                        <li><span class="hp-city-ic"><i class="fa fa-map-marker"></i></span>Zirakpur</li>
                    </ul>
                    <a href="tel:09217532501" class="hp-coverage-call">
                        <span class="hp-hero-call-ic"><i class="fa fa-phone"></i></span>
                        <span><small>Call to Ask Any Question</small><b>09217532501</b></span>
                    </a>
                </div>
                <div class="hp-coverage-col">
                    <h3><i class="fa fa-truck"></i> Intercity Relocation from Chandigarh</h3>
                    <ul class="hp-route-list">
                        <li><span>Chandigarh</span><span class="hp-route-line"><i class="fa fa-truck"></i></span><b>Delhi</b></li>
                        <li><span>Chandigarh</span><span class="hp-route-line"><i class="fa fa-truck"></i></span><b>Mumbai</b></li>
                        <li><span>Chandigarh</span><span class="hp-route-line"><i class="fa fa-truck"></i></span><b>Bangalore</b></li>
                        <li><span>Chandigarh</span><span class="hp-route-line"><i class="fa fa-truck"></i></span><b>Pune</b></li>
                        <li><span>Chandigarh</span><span class="hp-route-line"><i class="fa fa-truck"></i></span><b>Hyderabad</b></li>
                        <li><span>Chandigarh</span><span class="hp-route-line"><i class="fa fa-truck"></i></span><b>Jaipur</b></li>
                    </ul>
                </div>
            </div>

            <!-- Popular searches: order shuffled on every page load by home.js -->
            <div class="hp-searches" data-reveal>
                <div class="hp-searches-head">
                    <span class="hp-searches-ic"><i class="fa fa-search"></i></span>
                    <h3>Popular Searches</h3>
                </div>
                <div class="hp-search-tags" id="hpSearchTags">
                    <span>Packers and Movers in Chandigarh</span>
                    <span>Movers and Packers Chandigarh</span>
                    <span>Best Packers and Movers in Chandigarh</span>
                    <a href="household-goods-shifting.aspx">Household Goods Shifting Chandigarh</a>
                    <a href="household-goods-shifting.aspx">Home Shifting Services Chandigarh</a>
                    <a href="household-goods-shifting.aspx">Local Shifting in Chandigarh</a>
                    <a href="packing-and-moving.aspx">Packing and Moving Services</a>
                    <a href="packing-and-moving.aspx">Office Shifting Services Chandigarh</a>
                    <a href="loading-and-unloading.aspx">Loading and Unloading Services</a>
                    <a href="loading-and-unloading.aspx">Labour for Shifting Chandigarh</a>
                    <a href="home-furniture-shifting.aspx">Furniture Shifting Chandigarh</a>
                    <a href="home-furniture-shifting.aspx">Furniture Dismantling and Reassembly</a>
                    <a href="car-bike-transportation.aspx">Car Transportation in Chandigarh</a>
                    <a href="car-bike-transportation.aspx">Bike Transportation Chandigarh</a>
                    <a href="car-bike-transportation.aspx">Car Carrier Services</a>
                    <a href="transportaton-insurance.aspx">Transit Insurance for Shifting</a>
                    <span>Packers and Movers Mohali</span>
                    <span>Packers and Movers Panchkula</span>
                    <span>Packers and Movers Zirakpur</span>
                    <span>Domestic Relocation Services</span>
                    <span>International Goods Shifting</span>
                    <span>Warehouse Services Chandigarh</span>
                </div>
            </div>
        </div>
    </section>

    <!-- ================= FAQ ================= -->
    <section class="hp-section hp-faq-sec">
        <div class="container">
            <div class="row">
                <div class="col-lg-4" data-reveal>
                    <span class="hp-kicker">FAQ</span>
                    <h2 class="hp-h2">Questions, answered.</h2>
                    <p class="hp-muted">Still unsure? Call us on <a href="tel:09217532501">09217532501</a> &ndash; we're available 24x7.</p>
                </div>
                <div class="col-lg-8">
                    <div class="hp-faq" data-reveal>
                        <details open>
                            <summary>How much does shifting cost?</summary>
                            <p>The price depends on the volume of goods, the distance, and the services you choose (packing, loading, insurance, vehicle transport). Share your details in the quote form and we'll give you a clear, fixed price.</p>
                        </details>
                        <details>
                            <summary>Do you shift outside Chandigarh?</summary>
                            <p>Yes. We're based in Chandigarh and move households, offices and vehicles to destinations across India, and also handle international goods shifting.</p>
                        </details>
                        <details>
                            <summary>Are my goods insured during transit?</summary>
                            <p>We offer transportation insurance that protects your goods against unforeseen loss or damage on the road. Ask our team to include it in your quote.</p>
                        </details>
                        <details>
                            <summary>Can you move my car or bike too?</summary>
                            <p>Yes. Cars and bikes are loaded with secure fittings in suitable carriers for a damage-free journey, either along with your household goods or on their own.</p>
                        </details>
                        <details>
                            <summary>How early should I book?</summary>
                            <p>Booking a few days ahead helps us plan the right vehicle and crew, especially at month-end and weekends. For urgent moves, call us &ndash; we'll do our best to accommodate you.</p>
                        </details>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>
<script src="js/home.js"></script>
</asp:Content>
