window.addEventListener('DOMContentLoaded', () => {
    const displayBox = document.getElementById('display-box');
    const closeBrowserApp = () => {
        displayBox.style.display = 'none';
        fetch(`https://${GetParentResourceName()}/closeBrowserApp`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: '{}'
        });
    };

    window.addEventListener('message', (event) => {
        if (event.data.action === 'openBrowserApp') {
            displayBox.style.display = 'flex';
        }
        if (event.data.action === 'closeBrowserApp') {
            displayBox.style.display = 'none';
        }
    });

    document.addEventListener('keydown', (event) => {
        if (displayBox.style.display === 'flex' && (event.key === 'Escape' || event.key === 'Esc')) {
            closeBrowserApp();
        }
    });
});