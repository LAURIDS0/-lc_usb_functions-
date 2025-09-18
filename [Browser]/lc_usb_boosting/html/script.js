window.addEventListener('DOMContentLoaded', () => {
    const displayBox = document.getElementById('display-box');
    const closeBoostingApp = () => {
        displayBox.style.display = 'none';
        fetch(`https://${GetParentResourceName()}/closeBoostingApp`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: '{}'
        });
    };

    window.addEventListener('message', (event) => {
        if (event.data.action === 'openBoostingApp') {
            displayBox.style.display = 'flex';
        }
        if (event.data.action === 'closeBoostingApp') {
            displayBox.style.display = 'none';
        }
    });

    document.addEventListener('keydown', (event) => {
        if (displayBox.style.display === 'flex' && (event.key === 'Escape' || event.key === 'Esc')) {
            closeBoostingApp();
        }
    });
});