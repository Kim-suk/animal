// contextPath는 jsp에서 미리 전역 변수로 선언해줘야 함!
let logoutConfirmed = false;

document.addEventListener("DOMContentLoaded", function () {
	const confirmBtn = document.getElementById("confirmLogout");
	const logoutModal = document.getElementById("logoutModal");

	if (confirmBtn && logoutModal) {
		confirmBtn.addEventListener("click", function () {
			logoutConfirmed = true;
			const modal = bootstrap.Modal.getInstance(logoutModal);
			if (modal) modal.hide();
		});

		logoutModal.addEventListener("hidden.bs.modal", function () {
			if (logoutConfirmed) {
				fetch(contextPath + "/member/logout.do")
					.then(response => {
						if (!response.ok) throw new Error("Logout failed");
						window.location.href = contextPath + "/main.do";
					})
					.catch(() => {
						alert("로그아웃에 실패했습니다.");
					});
				logoutConfirmed = false;
			}
		});
	}

	// 모달이 꺼졌는데 backdrop이 안 없어졌을 경우 대비
	const backdrop = document.querySelector('.modal-backdrop');
	if (backdrop) backdrop.remove();
});

function logout(event) {
	event.preventDefault();
	const modalElement = document.getElementById("logoutModal");
	if (modalElement) {
		const modal = new bootstrap.Modal(modalElement, {
			backdrop: false
		});
		modal.show();
	}
}
