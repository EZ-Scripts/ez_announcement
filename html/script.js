window.addEventListener('message', function(event) {
    if (event.data.type === 'announcement') {
        document.getElementById('announcement-message').textContent = event.data.message;
        document.getElementById('container').style.top = '0px';
        document.getElementById('announcement-header').innerHTML = '<i class="fas fa-bullhorn"></i> Announcement';
        
        setTimeout(function() {
            document.getElementById('container').style.top = '-120px';
			document.getElementById('announcement-message').textContent = '';
        }, event.data.duration || 8000);
    } else if (event.data.type === 'restart') {
        document.getElementById('announcement-message').textContent = event.data.message;
        document.getElementById('container').style.top = '0px';
        document.getElementById('announcement-header').innerHTML = '<i class="fas fa-redo"></i> Server Restart';
        
        setTimeout(function() {
            document.getElementById('container').style.top = '-120px';
			document.getElementById('announcement-message').textContent = '';
        }, event.data.duration || 8000);
    } else if (event.data.type === 'airdrop') {
        document.getElementById('announcement-message').textContent = event.data.message;
        document.getElementById('container').style.top = '0px';
        document.getElementById('announcement-header').innerHTML = '<i class="fas fa-plane"></i> Airdrop';
        
        setTimeout(function() {
            document.getElementById('container').style.top = '-120px';
			document.getElementById('announcement-message').textContent = '';
        }, event.data.duration || 8000);
    }
});
