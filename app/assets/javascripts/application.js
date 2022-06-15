// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//= require turbolinks
//= require rails-ujs
//= require activestorage
//= require_tree .
//= require jquery
//= require jquery_ujs

function isSmartPhone() {
  if (navigator.userAgent.match(/iPhone|Android.+Mobile/)) {
    let element = document.getElementByClass('main-content');
    element.removeClass('main-content');
    element.addClass('sp-content');
    return true;
  } else {
    return false;
  }
}

$(function(){
  $(window).scroll(function (){
    $(".scroll_fade").each(function(){
      var imgPos = $(this).offset().top;
      var scroll = $(window).scrollTop();
      var windowHeight = $(window).height();
      if (scroll > imgPos - windowHeight + windowHeight/5){
        $(this).addClass("fade_on");
      } else {
        $(this).removeClass("fade_on");
      }
    });
  });
});

$(document).on({
    mouseenter:function(){
      $(this).addClass('on');
      $(this).find('.projects-thumbnail-video')[0].currentTime = $(this).find('.projects-thumbnail-video')[0].initialTime || 0;
      $(this).find('.projects-thumbnail-video')[0].play();
    },
    mouseleave:function(){
      $(this).removeClass('.projects-thumbnail-video');
      //$(this).find('.projects-thumbnail-video')[0].pause();
      $(this).find('.projects-thumbnail-video')[0].load();
    }
},'.project-thumbnail');
