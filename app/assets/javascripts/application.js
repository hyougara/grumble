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
//
//= require jquery
//= require rails-ujs
//= require_tree .
//= require bootstrap-sprockets

$(function(){
  // 矢印を消す
  $('p.back-to-top').hide();
  // windowがスクロールしたら
  $(window).scroll(function(){
    // pagescroll量を表示させて、スクロール量が50を越えたら表示、それ以外は消す
    $('p.pagenum').text($(this).scrollTop());
    if ($(this).scrollTop() > 50){
      $('p.back-to-top').fadeIn();
    }else{
      ($('p.back-to-top').fadeOut());
    }
  });
  // 矢印を押したらアニメーションを加える
  $('p.back-to-top').on('click',function(){
    $('body,html').animate({
      // スクロール量を０に戻す、ゆっくり
      scrollTop: 0
    },"slow");
    return false;
  });
});