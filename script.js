$(document).ready(function(){
    $(window).scroll(function(){
        if(this.scrollY > 20){
            $('.navbar1').addClass("sticky");
        }else{
            $('.navbar1').removeClass("sticky");
        }


        if(this.scrollY > 500){
            $('.scroll-up-btn1').addClass("show");
        }else{
            $('.scroll-up-btn1').removeClass("show");
        }
    });


    $('.scroll-up-btn1').click(function(){
        $('html').animate({scrollTop: 0});
        $('html').css("scrollBehavior", "auto");
    });

    $('.navbar1 .menu1 li a').click(function(){
        $('html').css("scrollBehavior", "smooth");
    });


    $('.menu-btn1').click(function(){
        $('.navbar1 .menu1').toggleClass("active");
        $('.menu-btn1 i').toggleClass("active");
    });


    var typed = new Typed(".typing", {
        strings: ["Developer", "", "Designer", "Freelancer"],
        typeSpeed: 100,
        backSpeed: 60,
        loop: true
    });

    var typed = new Typed(".typing-2", {
        strings: ["Developer", "Blogger", "Designer", "Freelancer"],
        typeSpeed: 100,
        backSpeed: 60,
        loop: true
    });

    //sk_sojib
    $('.carouselei').owlCarousel({

    });
});
