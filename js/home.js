/* Home page interactions: seamless marquees, scroll-driven journey truck, draggable gallery strip */
document.addEventListener('DOMContentLoaded', function () {
    'use strict';

    var reduceMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;

    /* ---------- Hero background carousel ---------- */
    var slides = document.querySelectorAll('#hpSlides .hp-slide');
    var dots = document.querySelectorAll('#hpSlideDots button');
    var captions = document.querySelectorAll('#hpCaptions .hp-caption');
    var current = 0, timer = null, SLIDE_MS = 6000;

    function showSlide(n) {
        slides[current].classList.remove('is-active');
        dots[current].classList.remove('is-active');
        if (captions[current]) captions[current].classList.remove('is-active');
        current = (n + slides.length) % slides.length;
        slides[current].classList.add('is-active');
        if (captions[current]) captions[current].classList.add('is-active');
        // re-trigger the progress bar animation on the active dot
        void dots[current].offsetWidth;
        dots[current].classList.add('is-active');
    }
    function startSlides() {
        stopSlides();
        if (!reduceMotion && slides.length > 1) timer = setInterval(function () { showSlide(current + 1); }, SLIDE_MS);
    }
    function stopSlides() { if (timer) { clearInterval(timer); timer = null; } }

    if (slides.length) {
        dots.forEach(function (dot, i) {
            dot.addEventListener('click', function () { showSlide(i); startSlides(); });
        });
        document.addEventListener('visibilitychange', function () { document.hidden ? stopSlides() : startSlides(); });
        startSlides();
    }

    /* (keyword shuffling lives in site.js so service pages can use it too) */

    /* ---------- Seamless marquees: duplicate content so translateX(-50%) loops ---------- */
    document.querySelectorAll('.hp-ticker-track, .hp-marquee-track').forEach(function (track) {
        var html = track.innerHTML;
        track.innerHTML = html + html;
        Array.prototype.slice.call(track.children, track.children.length / 2).forEach(function (el) {
            el.setAttribute('aria-hidden', 'true');
        });
    });

    /* ---------- Journey: truck follows scroll progress through the section ---------- */
    var journey = document.getElementById('hpJourney');
    var truck = document.getElementById('hpRoadTruck');
    var fill = document.getElementById('hpRoadFill');
    var stops = document.querySelectorAll('#hpStops li');
    var vertical = window.matchMedia('(max-width: 991px)');

    function updateJourney() {
        if (!journey || !truck) return;
        var rect = journey.getBoundingClientRect();
        var vh = window.innerHeight;
        // 0 when section top hits 75% of viewport, 1 when section bottom reaches 60%
        var start = vh * 0.75, end = vh * 0.6;
        var total = rect.height + start - end;
        var p = Math.min(Math.max((start - rect.top) / total, 0), 1);
        if (reduceMotion) p = 1;
        var pct = (p * 100).toFixed(2) + '%';
        if (vertical.matches) {
            truck.style.top = pct; truck.style.left = '';
            fill.style.height = pct; fill.style.width = '';
        } else {
            truck.style.left = pct; truck.style.top = '';
            fill.style.width = pct; fill.style.height = '';
        }
        stops.forEach(function (li, i) {
            li.classList.toggle('is-reached', p >= i / (stops.length - 1) - 0.02);
        });
    }
    var ticking = false;
    function requestJourney() {
        if (!ticking) { ticking = true; requestAnimationFrame(function () { updateJourney(); ticking = false; }); }
    }
    window.addEventListener('scroll', requestJourney, { passive: true });
    window.addEventListener('resize', requestJourney);
    updateJourney();

    /* ---------- Gallery strip: buttons + drag to scroll ---------- */
    var strip = document.getElementById('hpStrip');
    if (strip) {
        document.querySelectorAll('.hp-strip-btn').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var card = strip.querySelector('a');
                var step = card ? card.getBoundingClientRect().width + 18 : 300;
                strip.scrollBy({ left: step * parseInt(btn.getAttribute('data-dir'), 10), behavior: 'smooth' });
            });
        });

        var down = false, moved = false, startX = 0, startScroll = 0;
        strip.addEventListener('mousedown', function (e) {
            down = true; moved = false; startX = e.pageX; startScroll = strip.scrollLeft;
        });
        window.addEventListener('mousemove', function (e) {
            if (!down) return;
            var dx = e.pageX - startX;
            if (Math.abs(dx) > 5) { moved = true; strip.classList.add('is-dragging'); }
            strip.scrollLeft = startScroll - dx;
        });
        window.addEventListener('mouseup', function () {
            down = false; strip.classList.remove('is-dragging');
        });
        // don't open the lightbox at the end of a drag
        strip.addEventListener('click', function (e) {
            if (moved) { e.preventDefault(); e.stopImmediatePropagation(); moved = false; }
        }, true);
    }
});
