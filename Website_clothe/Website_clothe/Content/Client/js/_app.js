$(document).ready(function () {
    $(".card-slider").slick({
        slidesToShow: 3,
        infinite: true,
        //autoplay: true,
        //autoplaySpeed: 1000,
        arrows:true,
        draggable: false,
        prevArrow: `<button type='button' class='slick-prev slick-arrow '><i class="fas fa-arrow-left"></i></button>`,
        nextArrow: `<button type='button' class='slick-next slick-arrow '><i class="fas fa-arrow-right"></i></button>`,
        responsive: [
            {
                breakpoint: 560,
                settings: {
                    slidesToShow: 1,
                    dots: false
                }
            }
        ]
    });
    $(".slider-for").slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.slider-nav'
    });
    $('.slider-nav').slick(
        {
            infinite:true,
            slidesToShow: 3,
            slidesToScroll: 1,
            asNavFor: '.slider-for',
            arrows: false,
            centerMode: true,
            focusOnSelect: true,
            centerPadding: '56px',
            prevArrow: `<button type='button' class='slick-prev slick-arrow '><i class="fas fa-arrow-left"></i></button>`,
            nextArrow: `<button type='button' class='slick-next slick-arrow '><i class="fas fa-arrow-right"></i></button>`,
        }
    );
});