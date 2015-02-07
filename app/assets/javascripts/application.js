// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require ahoy
//= require jquery_ujs
//= require ckeditor/init
//= require jquery_nested_form
//= require_tree .


$( document ).ready(function() {
  $('#container').sliphover({    
    duration: 'slow',
    title: 'alt'    
  }); 
  $('ul#nav-items li').click(function(){
    var ThisId = $(this).attr('id');
    if (ThisId == 'show-home') {
      $('.navbar').removeClass('other-page').addClass('main-page-menu');
      $('.show-boxes').fadeOut(500);
      
    }
    else {
      
      $('.navbar').removeClass('main-page-menu').addClass('other-page');
      $('.show-boxes').fadeOut(500);
      $('.'+ThisId).fadeIn(1000);
      
    }
  });
  
  
  //$('.menu-button').click(function(){
  //  $('.menu-bar').removeClass('menu-bar-open').addClass('menu-bar-close');
  //  $('.main-div .logo').removeClass('bg-white ').addClass('bg-transparent');
    
  //});
  $(':submit').click(function(e) {
    $(':text.needed, textarea.needed').each(function() {
      if ($(this).val().length == 0) {
        $(this).css('border', '2px solid red');
        e.preventDefault();
      }
    });
  });

});
