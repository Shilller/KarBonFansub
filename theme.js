let previousTheme = localStorage.getItem("theme") || "light";

function toggleTheme() {
  const isDark = document.documentElement.classList.toggle("dark");

  document.body.classList.toggle("dark", isDark);

  localStorage.setItem("theme", isDark ? "dark" : "light");
}

window.onload = function () {
  const isDark = localStorage.getItem("theme") === "dark";

  document.documentElement.classList.toggle("dark", isDark);
  document.body.classList.toggle("dark", isDark);

  const toggle = document.getElementById("themeToggle");
  if (toggle) toggle.checked = isDark;
};

if (sessionStorage.getItem("shilller-mode") === "true") {
  document.documentElement.classList.add("shilller-mode");
}

function setShilllerMode(enabled) {
  if (enabled) {
    previousTheme = localStorage.getItem("theme") || "light";

    document.documentElement.classList.add("shilller-mode");
    document.documentElement.classList.add("dark");
    document.body.classList.add("dark");

    const toggle = document.getElementById("themeToggle");
    if (toggle) toggle.checked = true;
  } else {
    document.documentElement.classList.remove("shilller-mode");

    const isDark = previousTheme === "dark";

    document.documentElement.classList.toggle("dark", isDark);
    document.body.classList.toggle("dark", isDark);

    const toggle = document.getElementById("themeToggle");
    if (toggle) toggle.checked = isDark;
  }

  sessionStorage.setItem("shilller-mode", enabled);
}

/* ÖZEL GÜN TEMALARI */
(function () {
  const now = new Date();
  const month = now.getMonth(); // 0 = Ocak, 9 = Ekim, 11 = Aralık
  const day = now.getDate();

  let activeSpecialClass = null;

  // Cadılar Bayramı: 10 Ekim - 31 Ekim
  if (month === 9 && day >= 10 && day <= 31) {
    activeSpecialClass = "halloween-mode";
  }
  // Yeni Yıl: 28 Aralık - 3 Ocak
  else if ((month === 11 && day >= 28) || (month === 0 && day <= 3)) {
    activeSpecialClass = "newyear-mode";
  }

  if (activeSpecialClass) {
    document.documentElement.classList.add(activeSpecialClass);
    document.documentElement.classList.remove("shilller-mode");
    sessionStorage.setItem("shilller-mode", "false");

    window.setShilllerMode = function () {
      console.log("Özel tema aktifken Shilller Mode açılamaz!");
    };

    document
      .querySelectorAll("#themeToggle, .theme-switch, .theme-btn")
      .forEach((btn) => {
        btn.style.pointerEvents = "none";
        btn.style.opacity = "0.3";
        if (btn.type === "checkbox") btn.checked = false;
      });
  }
})();
