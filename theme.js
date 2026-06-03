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