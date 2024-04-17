document.addEventListener("DOMContentLoaded", function() {
    const menuToggle = document.getElementById("menu-toggle");
    const menu = document.getElementById("menu");

    function hideMenu() {
        menu.classList.add("hidden");
    }

    function toggleMenu() {
        menu.classList.toggle("hidden");
        localStorage.setItem("menuHidden", menu.classList.contains("hidden"));
    }

    menuToggle.addEventListener("click", toggleMenu);

    // Check if the menu was previously hidden
    const menuHidden = localStorage.getItem("menuHidden") === "true";
    if (menuHidden) {
        hideMenu();
    }
});