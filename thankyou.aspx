<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thankyou.aspx.cs" Inherits="thankyou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ThankYou</title>
    <meta name="robots" content="noindex,nofollow" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet" />
    <link href="css/fontawesome.min.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
	<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-18109288700"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-18109288700');
</script>

	<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TMV99KDH');</script>
<!-- End Google Tag Manager -->

    <style>
        * { box-sizing: border-box; }
        body {
            margin: 0; min-height: 100vh;
            display: flex; align-items: center; justify-content: center;
            padding: 24px;
            font-family: var(--ap-body); color: var(--ap-ink);
            background:
                radial-gradient(rgba(255,255,255,.07) 1px, transparent 1px) 0 0 / 24px 24px,
                radial-gradient(900px 500px at 90% 0%, rgba(247,147,30,.25), transparent 60%),
                linear-gradient(150deg, var(--ap-navy-deep), var(--ap-navy));
        }
        .ty-card {
            position: relative; overflow: hidden;
            width: 100%; max-width: 560px;
            padding: 44px 40px 40px;
            border-radius: 24px; background: #fff; text-align: center;
            box-shadow: 0 40px 80px rgba(0,0,0,.35);
            border-top: 6px solid var(--ap-orange);
        }
        .ty-logo { height: 50px; margin-bottom: 28px; }
        .ty-check {
            width: 92px; height: 92px; margin: 0 auto 24px; border-radius: 50%;
            display: flex; align-items: center; justify-content: center;
            background: #e9f9ef; color: #16a34a; font-size: 42px;
            box-shadow: 0 0 0 10px rgba(22,163,74,.08);
            animation: ty-pop .6s cubic-bezier(.2,1.4,.4,1) both;
        }
        @keyframes ty-pop { from { transform: scale(.3); opacity: 0; } to { transform: none; opacity: 1; } }
        .ty-card h1 { font-family: var(--ap-display); font-weight: 700; color: var(--ap-navy); font-size: clamp(22px, 4vw, 28px); line-height: 1.3; margin: 0 0 28px; }
        .ty-actions { display: flex; flex-wrap: wrap; justify-content: center; gap: 12px; }
        .ty-actions .ap-btn { text-decoration: none; }
        .ty-call { color: var(--ap-navy); background: var(--ap-tint); }
        .ty-call:hover { color: var(--ap-navy); background: #e8edf6; }
        .ty-road { position: absolute; left: 0; right: 0; bottom: 0; height: 6px; background: repeating-linear-gradient(90deg, var(--ap-orange) 0 30px, transparent 30px 48px); opacity: .5; }
        @media (prefers-reduced-motion: reduce) { .ty-check { animation: none; } }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="ty-card">
            <img class="ty-logo" src="active-packers-logo.png" alt="Active Packers &amp; Movers" />
            <div class="ty-check"><i class="fa fa-check"></i></div>
            <h1>Details Submitted, We will connect to you shortly.</h1>
            <div class="ty-actions">
                <a href="../" class="ap-btn ap-btn-orange"><i class="fa fa-home"></i> Goto Homepage</a>
                <a href="tel:09217532501" class="ap-btn ty-call"><i class="fa fa-phone"></i> 09217532501</a>
            </div>
            <span class="ty-road" aria-hidden="true"></span>
        </div>
    </form>
</body>
</html>
