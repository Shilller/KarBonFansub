const statCounters = document.querySelectorAll(".stats-number");

function animateCounter(counter) {
  const target = Number(counter.dataset.target);
  const duration = 1500;
  const startTime = performance.now();

  function updateCounter(currentTime) {
    const progress = Math.min((currentTime - startTime) / duration, 1);
    const easedProgress = 1 - Math.pow(1 - progress, 4);

    counter.textContent = Math.floor(target * easedProgress).toLocaleString(
      "tr-TR",
    );

    if (progress < 1) {
      requestAnimationFrame(updateCounter);
    } else {
      counter.textContent = target.toLocaleString("tr-TR");
    }
  }

  requestAnimationFrame(updateCounter);
}

const statsObserver = new IntersectionObserver(
  (entries, observer) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        animateCounter(entry.target);
        observer.unobserve(entry.target);
      }
    });
  },
  { threshold: 0.5 },
);

statCounters.forEach((counter) => statsObserver.observe(counter));
