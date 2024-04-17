document.addEventListener("turbo:load", function() {
    const links = document.querySelectorAll('a');

    links.forEach(function(link) {
        // Verify if the link has the data-turbo-method attribute
        if (!link.dataset.turboMethod || link.dataset.turboMethod !== "delete") {
            // If the link doesn't have the data-turbo-method attribute, set the data-turbo attribute to false
            link.setAttribute('data-turbo', 'false');
        }
    });
});