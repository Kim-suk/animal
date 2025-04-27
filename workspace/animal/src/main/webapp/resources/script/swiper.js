document.addEventListener("DOMContentLoaded", function () {
    // atc03 전용 Swiper
    new Swiper("#atc03 .sh_notice", {
        slidesPerView: 3,
        spaceBetween: 40,
        speed: 1800,
        loop: true,
        autoplay: {
            delay: 1000,
        },
        navigation: {
            nextEl: "#atc03 .next",
            prevEl: "#atc03 .prev",
        },
        pagination: {
            el: "#atc03 .pager",
            clickable: true,
        },
    });

    // main.mySwiper 용 메인 슬라이더(유튜브)
    new Swiper(".mySwiper", {
        slidesPerView: 3,
        spaceBetween: 30,
        loop: true,
        autoplay: {
            delay: 2500, // 2.5초마다 자동 넘김
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });

    // getboard.miSwiper 용 또 다른 슬라이더 
    new Swiper(".miSwiper", {
        loop: true,
        autoplay: {
            delay: 3000,
            disableOnInteraction: false,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });
});
