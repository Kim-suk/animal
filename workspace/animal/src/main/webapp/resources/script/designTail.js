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
	console.log("%c�살＜��","font-size:25px;color:#f00");
	console.log("%c�꾩옱 �묒냽�� �ъ씠�몄쓽 �붿옄�� ���묎텒�� (二�)�ㅼ씠�앹뿉 �덉뒿�덈떎. 臾대떒�쇰줈 �붿옄�� �섏젙/諛고룷/�먮ℓ �� 踰뺤쟻 梨낆엫�� 臾쇱쓣 �� �덉뒿�덈떎.","font-size:16px");
});