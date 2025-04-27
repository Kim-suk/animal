$(function(){
	if (window.addEventListener) {
		window.addEventListener('contextmenu', function(e) { try { if (typeof e != 'undefined') { e.preventDefault(); return false; } else { return false; }} catch(e) {} } , false);
	} else {
		window.attachEvent('oncontextmenu', function(e) { try { if (typeof e != 'undefined') { e.preventDefault(); return false; } else { return false; }} catch(e) {} } );
	}
	let b_code = '';
	var handlemouseEvent = function(e) {
		try {
			if (typeof e == 'undefined') {
				if (window.event.button && window.event.button == "2") {
					return false;
				}
			} else if ((e.which && e.which == 3) || (e.button && e.button == 2)) {
				e.preventDefault();
				return false;
			} else if (e.keyCode == 123 || ((b_code==17 || b_code==16) && (e.keyCode == 73 || e.keyCode == 67)) || (b_code==17 && e.keyCode == 83)) {
				e.preventDefault();
				return false;
			}
			b_code = e.keyCode;
		} catch (e) {}
	};
	window.onkeydown = handlemouseEvent;
	window.onkeyup = handlemouseEvent;
	});