// Adds an always-visible custom scrollbar below every horizontally
// overflowing display-math block. MathJax's own scroll container
// (mjx-container[display='true']) already handles the actual scrolling; the
// native OS scrollbar it would normally show is hidden in CSS because macOS
// won't reliably reveal it before the reader is already mid-scroll. This
// gives that same container a visible affordance instead, styled as
// .mm-scrollbar in maximum-mathematics.css.
(function () {
  function buildIndicator(mjx) {
    if (mjx.dataset.mmScrollInit) return;
    mjx.dataset.mmScrollInit = '1';

    var bar = document.createElement('div');
    bar.className = 'mm-scrollbar';
    var thumb = document.createElement('div');
    thumb.className = 'mm-scrollbar__thumb';
    bar.appendChild(thumb);
    mjx.insertAdjacentElement('afterend', bar);

    function update() {
      var overflow = mjx.scrollWidth - mjx.clientWidth;
      if (overflow > 1) {
        bar.classList.add('mm-scrollbar--active');
        var thumbWidthPct = Math.max((mjx.clientWidth / mjx.scrollWidth) * 100, 10);
        var trackRangePct = 100 - thumbWidthPct;
        var scrolledPct = mjx.scrollLeft / overflow;
        thumb.style.width = thumbWidthPct + '%';
        thumb.style.left = scrolledPct * trackRangePct + '%';
      } else {
        bar.classList.remove('mm-scrollbar--active');
      }
    }

    mjx.addEventListener('scroll', update);
    window.addEventListener('resize', update);
    update();

    var dragging = false;
    var startX = 0;
    var startScroll = 0;

    thumb.addEventListener('pointerdown', function (e) {
      dragging = true;
      startX = e.clientX;
      startScroll = mjx.scrollLeft;
      bar.classList.add('mm-scrollbar--dragging');
      e.preventDefault();
    });

    window.addEventListener('pointermove', function (e) {
      if (!dragging) return;
      var trackWidth = bar.clientWidth - thumb.clientWidth;
      if (trackWidth <= 0) return;
      var scrollRange = mjx.scrollWidth - mjx.clientWidth;
      mjx.scrollLeft = startScroll + ((e.clientX - startX) / trackWidth) * scrollRange;
    });

    window.addEventListener('pointerup', function () {
      dragging = false;
      bar.classList.remove('mm-scrollbar--dragging');
    });

    // Clicking the track outside the thumb jumps the scroll position there.
    bar.addEventListener('pointerdown', function (e) {
      if (e.target === thumb) return;
      var rect = bar.getBoundingClientRect();
      var clickedPct = (e.clientX - rect.left) / rect.width;
      mjx.scrollLeft = clickedPct * (mjx.scrollWidth - mjx.clientWidth);
    });
  }

  function scan() {
    document.querySelectorAll('mjx-container[display="true"]').forEach(buildIndicator);
  }

  // The MathJax library script tag is `async` (see dependencies/math.html),
  // so `window.MathJax` may still be just the plain config object — not yet
  // augmented with `startup` — by the time this runs. Poll briefly rather
  // than assuming it's already loaded.
  function whenMathJaxReady(callback) {
    if (window.MathJax && window.MathJax.startup && window.MathJax.startup.promise) {
      window.MathJax.startup.promise.then(callback);
      return;
    }
    var attempts = 0;
    var timer = setInterval(function () {
      attempts++;
      if (window.MathJax && window.MathJax.startup && window.MathJax.startup.promise) {
        clearInterval(timer);
        window.MathJax.startup.promise.then(callback);
      } else if (attempts > 200) {
        clearInterval(timer); // ~20s: give up quietly, e.g. a page with no math.
      }
    }, 100);
  }

  whenMathJaxReady(scan);
})();
