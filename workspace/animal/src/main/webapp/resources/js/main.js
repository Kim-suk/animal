

$(function() {
	// Swiper 초기화
	var swiper = new Swiper('#visual .swiper-container.visual', {
		effect: 'fade',
		fadeEffect: {
			crossFade: true
		},
		autoplay: {
			delay: 3000,
			disableOnInteraction: false // 상호작용 후에도 자동재생 유지
		},
		speed: 1000,
		loop: true,
		simulateTouch: false,
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},
		pagination: {
			el: '.swiper-pagination',
			clickable: true,
		},
		on: {
			init: function () {
				// 슬라이드가 초기화될 때 비디오 재생
				var currentVideo = this.slides[this.realIndex].querySelector("video");
				if (currentVideo) {
					currentVideo.play();
				}
			},
		}
	});

	var sliderVideos = $(".swiper-slide video");
	var totalslide = swiper.slides.length;
	$(".totalslide").html(totalslide);
	swiper.on('slideChange', function() {
		console.log('slide changed');

		var activeslide = swiper.realIndex;
		$(".activeslide").html(activeslide + 1);

		var previousVideo = this.slides[this.previousIndex].querySelector("video");
		if (previousVideo) {
			previousVideo.currentTime = 0;
			previousVideo.pause(); // 이전 슬라이드의 비디오 정지
		}

		var currentVideo = this.slides[this.realIndex].querySelector("video");
		if (currentVideo) {
			currentVideo.play().catch(error => {
				// 비디오가 자동 재생되지 않으면 무시
			});
		}
	});

    $('.aniTxt1, .aniTxt2, .aniTxt3, .aniTxt4').each(function() {
		$(this).html(function (i, el) {
			return el.replace(/(\S|\s)/g, function (match) {
				if (match === " ") {
					return `<span>&nbsp;</span>`; // 공백을 non-breaking space로 변환
				}
				return `<span translate="no">${match}</span>`;
			});
		});
    });

    $(".aniTxt1").each(function() {
        $(this).find("> span").each(function(i) {
            var delay = (0.05 * i) + 0.5;
            $(this).css("animation-delay", delay + "s");
        });
    })
    $(".aniTxt2").each(function() {
        $(this).find("> span").each(function(i) {
            var delay = (0.05 * i) + 1.0;
            $(this).css("animation-delay", delay + "s");
        })
    })
    $(".aniTxt3").each(function() {
        $(this).find("> span").each(function(i) {
            var delay = (0.08 * i) + 2;
            $(this).css("animation-delay", delay + "s");
        });
    })

    $('.main .gift-box .btn a').each(function() {
        $(this).on('mouseenter', function() {
            $('.main .gift-box .swiper-slide .imgbox .img-h2').addClass("on");
        });
        $(this).on('mouseleave', function() {
            $('.main .gift-box .swiper-slide .imgbox .img-h2').removeClass("on");
        });
    });

    function scrolldownText() {
        $('.scrolldown .txt > span').each(function (index) {
            const $this = $(this);
            setTimeout(function () {
                $this.css('opacity', '1');
            }, index * 300);
        });

        setTimeout(function () {
            $('.scrolldown .txt > span').css('opacity', '0');
            setTimeout(scrolldownText, 300);
        }, $('.scrolldown .txt > span').length * 500);
    }
    scrolldownText();

    var windowSize = function() {
        var winWidth = $(window).width();
        if (winWidth > 1024) {} else {
            $('.main .section, .section .fp-scrollable, .fp-section, .fp-tableCell, .fp-scroller, .iScrollVerticalScrollbar').removeAttr("style");
        }
    }

    $(window).load(function() {
        windowSize();
    });

    $(window).resize(function() {
        windowSize();
    });

    $(window).on("orientationchange", function(event) {
        windowSize();
    });


	$('.product-box .listbox ul').on('mouseenter, mousemove', function() {
		const $ul = $(this);
		if ($(this).hasClass('active')) {
			$('.product-box .listbox ul li').hover(
				function () {
					$(this).addClass('on');
					$(this).siblings().addClass('off');
				},
				function () {
					$('.product-box .listbox ul li').removeClass('on off');
				}
			);
		}
	});

});

function startAnimation() {
    $(".scrolldown").addClass("on");
    setTimeout(function() {
        $(".scrolldown").removeClass("on");
        setTimeout(startAnimation, 500);
    }, 4000);
}

$(document).ready(function() {
    startAnimation();
});

$(window).resize(function() {
    startAnimation();
});



$(document).ready(function() {
    tab();
});

function tab() {
    // 탭 활성화 함수
    function activateTab(tabId) {
        $(".notice-box .listCont .nav > li").removeClass("active");
        $(`.notice-box .listCont .nav > li a[href="${tabId}"]`).parent().addClass("active");
    }

    // 스크롤 위치에 따라 탭 활성화
    function onScroll() {
        $(".notice-box .listbox .list").each(function () {
            let sectionTop = $(this).offset().top;
            let sectionHeight = $(this).outerHeight();
            let scrollPosition = $(window).scrollTop();
            let sectionId = `#${$(this).attr("id")}`;

            // 현재 섹션에 스크롤 위치가 들어왔는지 확인
            if (scrollPosition >= sectionTop - 100 && scrollPosition < sectionTop + sectionHeight) {
                activateTab(sectionId); // 해당 탭 활성화
            }
        });
    }

    // 탭 클릭 시 실행
    $(".notice-box .listCont .nav > li a").on("click", function (e) {
        e.preventDefault();
        let tabId = $(this).attr("href");

        // 탭 활성화
        activateTab(tabId);

        // 부드럽게 스크롤 이동
        let targetOffset = $(tabId).offset().top;
        $("html, body").animate({ scrollTop: targetOffset }, 800);
    });

    // 스크롤 이벤트 등록
    $(window).on("load scroll", onScroll);

    // 초기 상태 (첫 번째 탭 활성화)
    let firstTabId = $(".notice-box .listCont .nav > li:first-child a").attr("href");
    activateTab(firstTabId);
    slider(); // 슬라이드 실행
}

var swipers = []; // Swiper 인스턴스를 저장할 배열

function slider() {
    $(".notice-box .slider").each(function(index) {
        let $this = $(this);
        let slideNum = $this.find('.swiper-slide').length; // 슬라이드 개수
        let slideInx = 0; // 현재 슬라이드 index
        var slideTop = $('.notice-box').offset().top;

        // 디바이스 체크
        let oldWChk = window.innerWidth > 860 ? 'pc' : 'mo';
        sliderAct();
        $(window).on('resize', function() {
            let newWChk = window.innerWidth > 860 ? 'pc' : 'mo';
            if (newWChk !== oldWChk) {
                oldWChk = newWChk;
                sliderAct();
            }
        });
        // 현재 슬라이더를 변수로 참조
        const $slider = $(this);
        const $inner = $slider.find(".inner .swiper-wrapper");
        const slides = $inner.children(".swiper-slide");

        // 슬라이드 복제 로직: 슬라이드가 3개 이하일 경우 복제
        //if (slides.length <= 3) {
		if (slides.length == 2) {
            const cloneCount = 3 - slides.length; // 최소 3개를 맞추기 위해 필요한 복제 수 계산
            for (let i = 0; i <= cloneCount; i++) {
                slides.eq(i % slides.length).clone().appendTo($inner);
            }
        } else if (slides.length == 3) {
            const cloneCount = 4 - slides.length; // 최소 3개를 맞추기 위해 필요한 복제 수 계산
            for (let i = 0; i <= cloneCount; i++) {
                slides.eq(i % slides.length).clone().appendTo($inner);
            }
			
        }

        function sliderAct() {
            // 슬라이드 인덱스 클래스 추가
            $this.addClass(`slider${index}`);

            // 기존 Swiper 초기화
            if (swipers[index] !== undefined) {
                swipers[index].destroy();
                swipers[index] = undefined;
            }

            // slidesPerView 설정
            let viewNum = oldWChk === 'pc' ? 3 : 1;
            let loopChk = slideNum > viewNum;

            let time = 3000;

            swipers[index] = new Swiper(`.slider${index} .inner`, {
                slidesPerView: viewNum,
                initialSlide: slideInx,
                spaceBetween: 30,
                centeredSlides: false,
                observer: true,
                observeParents: true,
                simulateTouch: true,
                loop: loopChk,
                speed: 1000,
				autoplay: false,
                /*autoplay: loopChk ? {
                    delay: time,
                    disableOnInteraction: false,
                } : false,
				*/
                navigation: {
                    prevEl: `.slider${index} .btn_prev`,
                    nextEl: `.slider${index} .btn_next`,
                },
                pagination: {
                    el: '.swiper-pagination-n',
                    type: 'progressbar',
					clickable: true,
                },
                breakpoints: {
                    200: {
                        slidesPerView: 1,
                    },
                    860: {
                        slidesPerView: 3,
						spaceBetween: 10,
                    },
                    1280: {
                        slidesPerView: 3,
						spaceBetween: 20,
                    },
                    1640: {
                        slidesPerView: 3,
						spaceBetween: 30,
                    },
                },
                on: {
                    init: function() {
                        if (!loopChk) {
                            //this.autoplay.stop();
                        }
						// 총 슬라이드 개수 표시
						const totalSlides = this.slides.length;
						//const totalSlides = this.slides.length <= 3 ? 3 : this.slides.length; // 무조건 3개로
						$(`.slider${index} .totalslide`).html(totalSlides);

						// 초기 활성 슬라이드 번호 표시
						const activeSlide = this.realIndex + 1;
						$(`.slider${index} .activeslide`).html(activeSlide);
                    },
					slideChange: function () {
						// 활성 슬라이드 번호 업데이트
						const activeSlide = this.realIndex + 1;
						$(`.slider${index} .activeslide`).html(activeSlide);
					},
                    slideChangeTransitionStart: function() {
                        slideInx = this.realIndex;
                    },
                    activeIndexChange: function() {
                        if ($(`.slider${index}`).parent('.list').css('display') !== 'none') {
                            slideInx = this.realIndex;
                        }
                    },


                }
            });

            function autoStop() {
                var scrollTop = $(window).scrollTop();
                if (loopChk && scrollTop >= slideTop) {
				//if (loopChk && $('.main4').hasClass('active')) {
                    //swipers[index].autoplay.start();
                } else {
                    //swipers[index].autoplay.stop();
                }
            }

            autoStop();

            $(window).on("load scroll", function() {
                autoStop();
            });
        }
    });
}