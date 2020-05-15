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
//= require jquery_ujs
//= require Chart.bundle
//= require chartkick
//= require_tree ./clean_canvas

$(document).ready(function(){

  $('.task-submit').click(function(){
    $('.task-submit-hidden').click();
  });

  $('.toggle-target').hide();

  $('.toggle').click(function(){
  	var target = $( $(this).attr("href") );

  	if( target.is(":visible") ){
  		$(this).text( '(show strategies)' );
  		target.hide(250);
  	}
  	else{
  		$(this).text( '(hide strategies)' );
  		target.show(250);
  	}
  	return false;
  });

});
