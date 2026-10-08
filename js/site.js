/* Site-wide UI: sticky header, mobile drawer, mega menu, active link, scroll reveal, counters */
(function () {
    'use strict';

    var reduceMotion = window.matchMedia && window.matchMedia('(prefers-reduced-motion: reduce)').matches;

    /* ---------- Header shadow on scroll ---------- */
    var header = document.getElementById('apHeader');
    function onScroll() {
        if (header) header.classList.toggle('is-scrolled', window.scrollY > 10);
    }
    window.addEventListener('scroll', onScroll, { passive: true });
    onScroll();

    /* ---------- Active nav link ---------- */
    var page = (location.pathname.split('/').pop() || 'index.aspx').replace('.aspx', '').toLowerCase() || 'index';
    document.querySelectorAll('.ap-nav-link[data-page]').forEach(function (a) {
        if (a.getAttribute('data-page') === page) a.classList.add('is-active');
    });
    if (/shifting|moving|unloading|transportation|insurance/.test(page)) {
        var mt = document.querySelector('.ap-mega-toggle');
        if (mt) mt.classList.add('is-active');
    }

    /* ---------- Mega menu (click / keyboard support; hover handled in CSS) ---------- */
    document.querySelectorAll('.ap-has-mega').forEach(function (wrap) {
        var btn = wrap.querySelector('.ap-mega-toggle');
        btn.addEventListener('click', function (e) {
            e.preventDefault();
            var open = wrap.classList.toggle('is-open');
            btn.setAttribute('aria-expanded', open);
        });
        document.addEventListener('click', function (e) {
            if (!wrap.contains(e.target)) { wrap.classList.remove('is-open'); btn.setAttribute('aria-expanded', 'false'); }
        });
    });

    /* ---------- Mobile drawer ---------- */
    var burger = document.getElementById('apBurger');
    function setDrawer(open) {
        document.body.classList.toggle('ap-drawer-open', open);
        if (burger) burger.setAttribute('aria-expanded', open);
    }
    if (burger) burger.addEventListener('click', function () { setDrawer(true); });
    ['apDrawerClose', 'apBackdrop'].forEach(function (id) {
        var el = document.getElementById(id);
        if (el) el.addEventListener('click', function () { setDrawer(false); });
    });
    document.addEventListener('keydown', function (e) { if (e.key === 'Escape') setDrawer(false); });

    /* ---------- Keyword shuffling (home + service pages) ---------- */
    function shuffleChildren(parent) {
        // Fisher-Yates over the element's children, re-appended in the new order
        var items = Array.prototype.slice.call(parent.children);
        for (var i = items.length - 1; i > 0; i--) {
            var j = Math.floor(Math.random() * (i + 1));
            var tmp = items[i]; items[i] = items[j]; items[j] = tmp;
        }
        items.forEach(function (el) { parent.appendChild(el); });
        return items;
    }

    // Popular searches: new order on every visit
    var tags = document.getElementById('hpSearchTags');
    if (tags) shuffleChildren(tags);

    // Keyword line: random order, then cycles one keyword at a time
    var kwBox = document.getElementById('hpKw');
    if (kwBox && kwBox.children.length) {
        var kws = shuffleChildren(kwBox);
        kws.forEach(function (el) { el.classList.remove('is-active'); });
        var k = 0;
        kws[0].classList.add('is-active');
        if (!reduceMotion && kws.length > 1) {
            setInterval(function () {
                if (document.hidden) return;
                var prev = kws[k];
                k = (k + 1) % kws.length;
                prev.classList.remove('is-active');
                prev.classList.add('is-leaving');
                kws[k].classList.add('is-active');
                setTimeout(function () { prev.classList.remove('is-leaving'); }, 500);
            }, 2600);
        }
    }

    /* ---------- Count-up numbers: <span data-count="10000" data-suffix="+"> ---------- */
    function runCount(el) {
        var target = parseInt(el.getAttribute('data-count'), 10);
        var suffix = el.getAttribute('data-suffix') || '';
        var noSep = el.hasAttribute('data-nosep');
        var fmt = function (n) { return (noSep ? String(n) : n.toLocaleString('en-IN')) + suffix; };
        if (reduceMotion) { el.textContent = fmt(target); return; }
        var start = null, dur = 1600;
        function step(ts) {
            if (!start) start = ts;
            var p = Math.min((ts - start) / dur, 1);
            var eased = 1 - Math.pow(1 - p, 3);
            el.textContent = fmt(Math.round(target * eased));
            if (p < 1) requestAnimationFrame(step);
        }
        requestAnimationFrame(step);
    }

    /* ---------- Scroll reveal + counters ----------
       Checks element positions directly on load / scroll / resize rather than relying on
       IntersectionObserver, which only reports after a paint and can leave static pages hidden. */
    var pendingReveal = Array.prototype.slice.call(document.querySelectorAll('[data-reveal]'));
    var pendingCount = Array.prototype.slice.call(document.querySelectorAll('[data-count]'));

    if (reduceMotion) {
        pendingReveal.forEach(function (el) { el.classList.add('is-in'); });
        pendingReveal = [];
    }

    function inView(el, offset) {
        var r = el.getBoundingClientRect();
        return r.top < window.innerHeight - offset && r.bottom > 0;
    }
    function checkInView() {
        pendingReveal = pendingReveal.filter(function (el) {
            if (inView(el, 40)) { el.classList.add('is-in'); return false; }
            return true;
        });
        pendingCount = pendingCount.filter(function (el) {
            if (inView(el, 60)) { runCount(el); return false; }
            return true;
        });
    }
    var checking = false;
    function requestCheck() {
        if (checking) return;
        checking = true;
        requestAnimationFrame(function () { checking = false; checkInView(); });
    }
    checkInView();
    window.addEventListener('scroll', requestCheck, { passive: true });
    window.addEventListener('resize', requestCheck);
    window.addEventListener('load', checkInView);
})();
