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

function incrementValue() {
    var value = parseInt(document.getElementById('number').value);
    value = isNaN(value) ? 0 : value;
    value++;
    document.getElementById('number').value = value;
}

function decrementValue() {
    var value = parseInt(document.getElementById('number').value);
    value = isNaN(value) ? 0 : value;
    value--;
    document.getElementById('number').value = value;
}

function selectProductSize() {
    $('.ads_Checkbox:checked').each(function() {
        var index;
        var arr = "";
        var size = [];
        arr += $(this).val();
        size = arr.split(",");
        for (index = 0; index < size.length; ++index) {
            $('#arr_size').val(size[index]);
      }
    });
}

$(function() {
    $("#sort_paginate_ajax .justify-content-end a").on("click", function(){
      $.getScript(this.href);
      return false;
    });
});