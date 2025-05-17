document.addEventListener('DOMContentLoaded', function () {
    const navLinks = document.querySelectorAll('.app-nav a');
    const currentPath = window.location.pathname;

    navLinks.forEach(link => {
        const href = link.getAttribute('href');

        if (href && currentPath.includes(href.split('/').pop())) {
            // Highlight untuk dashboard
            if (href === "{{ url_for('dashboard') }}" && (currentPath === '/' || currentPath.endsWith('/dashboard'))) {
                link.classList.add('active');
            }
            // Highlight jika URL cocok di akhir
            else if (href.endsWith(currentPath.substring(currentPath.lastIndexOf('/')))) {
                link.classList.add('active');
            }
        }

        // Cek khusus untuk 'mahasiswa'
        if (href && href.includes('mahasiswa') && currentPath.includes('mahasiswa')) {
            if (href.endsWith('mahasiswa')) {
                link.classList.add('active');
            }
        }
    });

    // Cek ulang jika tidak ada link yang aktif (fallback)
    if (!document.querySelector('.app-nav a.active')) {
        navLinks.forEach(link => {
            const linkPath = link.pathname;
            if (currentPath === linkPath || (linkPath === '/' && currentPath.startsWith(linkPath))) {
                link.classList.add('active');
            }
        });
    }

    // Perbarui tahun di footer
    const footerYearElement = document.querySelector('.app-footer p');
    if (footerYearElement) {
        const currentFooterText = footerYearElement.textContent;
        const yearMatch = currentFooterText.match(/©\s*(\d{4})(\s*-\s*\d{4})?\s*My Simple Flask App/);

        const currentYear = new Date().getFullYear();

        if (yearMatch) {
            const yearPlaceholder = yearMatch[1];
            if (yearPlaceholder.startsWith("(") || parseInt(yearPlaceholder) !== currentYear) {
                footerYearElement.textContent = `© ${currentYear} My Simple Flask App`;
            }
        } else {
            footerYearElement.textContent = `© ${currentYear} My Simple Flask App`;
        }
    }

    // Tambahkan efek fokus ke input
    const formInputs = document.querySelectorAll('.form-group input[type="text"], .form-group input[type="password"], .form-group input[type="email"]');
    formInputs.forEach(input => {
        input.addEventListener('focus', () => {
            input.parentElement.classList.add('is-focused');
        });
        input.addEventListener('blur', () => {
            input.parentElement.classList.remove('is-focused');
        });
    });
});
