// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(function(){
    $('.nav-link').click(function(){
        console.log($(this).attr('href'))
        $('html, body').animate({
            scrollTop: $( $(this).attr('href') ).offset().top
        }, 1000);
        return false;
    });
});

$(function(){
    $('.nav-link').click(function(){
        console.log($(this).attr('href'))
        $('html, body').animate({
            scrollTop: $( $(this).attr('href') ).offset().top
        }, 1000);
        return false;
    });

    $('.user').html("logged in as Rohit");

    var $trans = $('#transpoter');
    var $send  = $('#sender');

    $trans.click(function(e){
        $trans.addClass('active');
        $send.removeClass('active');
        $('.sender-content').fadeOut('slow');
        $('.transpoter-content').removeClass('unactive');
    });

    $send.click(function(e){
        $('.transpoter-content').addClass('unactive');
        $trans.removeClass('active');
        $send.addClass('active');
        $('.sender-content').fadeIn('slow');
    });

});
$('#sender-form').submit(function(e){
        bool = true;
        var weight = $('#weight').val();
        //var sender_add = $('#sender_address').val();
        var rec_add = $('#reciever_address').val();
        var rec_phone = $('#reciever_phone').val();
        var rec_email = $('#reciever_email').val();
        e.preventDefault();
        $('.sender-content').fadeOut('slow');
        $('.afterSubmit').html('' +
            '<p><b>Weight: </b>'+weight+'</p>'+
            '<p><b>Reciever\'s Address: </b>'+rec_add+'</p>'+
            '<p><b>Reciever\'s Phone: </b>'+rec_phone+'</p>'+
            '<p><b>Reciever\'s Email: </b>'+rec_email+'</p>')
    });

