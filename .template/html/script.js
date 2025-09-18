window.addEventListener('DOMContentLoaded', () => {
    const displayBox = document.getElementById('display-box');
    const CLOSESTATEMENT = () => {
        displayBox.style.display = 'none';
        fetch(`https://${GetParentResourceName()}/CLOSESTATEMENT`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: '{}'
        });
    };

    window.addEventListener('message', (event) => {
        if (event.data.action === 'OPENSTATEMENT') {
            displayBox.style.display = 'flex';
        }
        if (event.data.action === 'CLOSESTATEMENT') {
            displayBox.style.display = 'none';
        }
    });

    document.addEventListener('keydown', (event) => {
        if (displayBox.style.display === 'flex' && (event.key === 'Escape' || event.key === 'Esc')) {
            CLOSESTATEMENT();
        }
    });
});