window.addEventListener('DOMContentLoaded', () => {
    const displayBox = document.getElementById('display-box');
    const closeDispatchApp = () => {
        displayBox.style.display = 'none';
        fetch(`https://${GetParentResourceName()}/closeDispatchApp`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: '{}'
        });
    };

    window.addEventListener('message', (event) => {
        if (event.data.action === 'openDispatchApp') {
            displayBox.style.display = 'flex';
        }
        if (event.data.action === 'closeDispatchApp') {
            displayBox.style.display = 'none';
        }
    });

    document.addEventListener('keydown', (event) => {
        if (displayBox.style.display === 'flex' && (event.key === 'Escape' || event.key === 'Esc')) {
            closeDispatchApp();
        }
    });
});