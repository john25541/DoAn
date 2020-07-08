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
//= require bootstrap-sprockets
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .

// function incrementValue() {
//     var value = parseInt(document.getElementById('number').value);
//     var name = $('.input-number').attr('name');
//     value = isNaN(value) ? 0 : value;
//     var maxValue = parseInt($('.input-number').attr('max'));                
//     if(!maxValue) maxValue = 200; 
//     if(value < maxValue) {                      
//         value++;
//         document.getElementById('number').value = value;       
//         $(".btn-number[data-type='plus'][data-field='"+name+"']").removeAttr('disabled')       
//     }                
//     else if (value == maxValue) {                    
//         $(".btn-number[data-type='plus'][data-field='"+name+"']").attr('disabled', true);          
//     }        
// }

// function decrementValue() {
//     var value = parseInt(document.getElementById('number').value);
//     var name = $('.input-number').attr('name');
//     value = isNaN(value) ? 0 : value;
//     var minValue = parseInt($('.input-number').attr('min'));                 
//     if(!minValue) minValue = 1;                
//     if(value > minValue) {                    
//         value--;
//         document.getElementById('number').value = value;   
//         $(".btn-number[data-type='minus'][data-field='"+name+"']").removeAttr('disabled')          
//     }                 
//     else if (value == minValue) {                    
//         $(".btn-number[data-type='minus'][data-field='"+name+"']").attr('disabled', true);     
//     }       
// }

$(function(){
    $('#formSize input').on('change', function() {
        var $productSize = ($('input[name="product_size"]:checked', '#formSize').val()); 
        $("input[id='size']").val($productSize);
     });
});

function selectQuantity() {
    var productNumber =  $("#number" ).val();
    $("#number" ).val();
}

$(function() {
    $("#sort_paginate_ajax .justify-content-end a").on("click", function(){
      $.getScript(this.href);
      return false;
    });
});