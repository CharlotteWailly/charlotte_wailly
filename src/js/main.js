const html = document.documentElement;
const themeToggle = document.getElementById('theme-toggle');
const themeIcon = document.querySelector('#theme-toggle > svg');
const sections = document.querySelectorAll('section:nth-child(even)');
themeToggle.addEventListener('click', () => {
    html.dataset.theme = html.dataset.theme === 'light' ? 'dark' : 'light';
    themeToggle.setAttribute('aria-label', html.dataset.theme === 'light' ? 'Turn on dark mode' : 'Turn off dark mode');
    if (html.dataset.theme === 'light') {
        themeIcon.classList.remove('moon');
        sections.forEach(e => e.style.backgroundColor = '#eee');
    } else {
        themeIcon.classList.add('moon');
        sections.forEach(e => e.style.backgroundColor = '#041413');
    }
});

// --------------------------------------------------

window.addEventListener('scroll', function() {
    const header = document.getElementById('header');
    const scrollPosition = window.scrollY;
    if (scrollPosition > 100) {
        header.classList.add('is-fixed');
    } else {
        header.classList.remove('is-fixed');
    }
});

// --------------------------------------------------

var map = L.map('map', {
    scrollWheelZoom: false, // zooming with mouse wheel
    dragging: false, // dragging (mouse and touch)
}).setView([47.58581966373667, -3.0269186603240565], 17);
map.getContainer().style.filter= 'sepia(.3)';
var marker = L.marker([47.58581966373667, -3.0269186603240565]).addTo(map);
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    minZoom: 15,
    maxZoom: 19
}).addTo(map);

// --------------------------------------------------

// Remove role="button" attributes to avoid conflicts with picocss
const roleButton = document.querySelectorAll('#map [role="button"]');
roleButton.forEach(e => e.removeAttribute("role"));
