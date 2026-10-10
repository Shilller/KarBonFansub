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
    // Kullanıcının mevcut temasını hatırla
    previousTheme = localStorage.getItem("theme") || "light";

    document.documentElement.classList.add("shilller-mode");

    // Zorla koyu tema
    document.documentElement.classList.add("dark");
    document.body.classList.add("dark");

    const toggle = document.getElementById("themeToggle");
    if (toggle) toggle.checked = true;
  } else {
    document.documentElement.classList.remove("shilller-mode");

    // Kullanıcının eski temasını geri yükle
    const isDark = previousTheme === "dark";

    document.documentElement.classList.toggle("dark", isDark);
    document.body.classList.toggle("dark", isDark);

    const toggle = document.getElementById("themeToggle");
    if (toggle) toggle.checked = isDark;
  }

  sessionStorage.setItem("shilller-mode", enabled);
}

/* CADILAR BAYRAMI TEMASI */
(function () {
  const now = new Date();
  if (now.getMonth() === 9 && now.getDate() >= 10 && now.getDate() <= 31) {
    // 1. Halloween aktif
    document.documentElement.classList.add("halloween-mode");
    document.documentElement.classList.remove("shilller-mode");
    sessionStorage.setItem("shilller-mode", "false");

    window.setShilllerMode = function () {
      console.log("Cadılar Bayramı Modu etkinken Shilller Mode açılamaz!");
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
/* CADILAR BAYRAMI TEMASI */
