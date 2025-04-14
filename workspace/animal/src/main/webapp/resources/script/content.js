/*inc01*/
$(document).ready(function () {
	var main_swiper = new Swiper("#main_banner .main_slide", {
	effect:'fade',
	slideActiveClass: 'on',
	autoplay: {
		delay: 3500,
		disableOnInteraction: false
	},
	speed: 1000,
	loop: true,
	grabCursor: true,
	on: {
		init: function () {
		$(".swiper-progress-bar").removeClass("animate");
		$(".swiper-progress-bar").removeClass("active");
		$(".swiper-progress-bar").eq(0).addClass("animate");
		$(".swiper-progress-bar").eq(0).addClass("active");
		},
		slideChangeTransitionStart: function () {
		$(".swiper-progress-bar").removeClass("animate");
		$(".swiper-progress-bar").removeClass("active");
		$(".swiper-progress-bar").eq(0).addClass("active");
		},
		slideChangeTransitionEnd: function () {
		$(".swiper-progress-bar").eq(0).addClass("animate");
		}
	}
	});
	var main_num = new Swiper("#main_banner .controls .pager", {
	effect:'fade',
	slideActiveClass: 'on',
	autoplay: {
		delay: 4000,
	},
	speed: 500,
	loop: true,
	});
});
function scrollToTarget() {
	const targetElement = document.getElementById("inc01");
	targetElement.scrollIntoView({ behavior: "smooth" });
}

/*inc02*/
gsap.registerPlugin(ScrollTrigger);
const pinnedImageWrappers = document.querySelectorAll('#inc02');

ScrollTrigger.matchMedia({
        "(min-width: 769px)": function() {
            if (pinnedImageWrappers) {
                pinnedImageWrappers.forEach((wrapper) => {
                    const inner = wrapper.querySelector('#inc02 .img_wrap ul');
                    gsap.to(inner, {
                        x: () => -((inner.scrollWidth - inner.offsetWidth)) + 'px',            
                        ease: 'none',
                        scrollTrigger: {
                            trigger: "#inc02",
                            start: "25% top",
                            toggleClass:"on",
                            scrub: 2,
                            pin:true,
                            end: () => `+=${inner.offsetWidth}`,
                        }
                    });
                });
            }
        },
    })
    
