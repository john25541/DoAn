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


$(document).ready(function () {
    $(".sort_paginate_ajax .justify-content-end a").attr('data-remote', 'true')
});

function findGetParameter(parameterName) {
    var result = null,
        tmp = [];
    location.search
        .substr(1)
        .split("&")
        .forEach(function (item) {
            tmp = item.split("=");
            if (tmp[0] === parameterName) result = decodeURIComponent(tmp[1]);
        });
    return result;
}

$(document).on('turbolinks:load', function () {
    $("input[name='s_prices']").on('click', function () {
        var sort_type = $(this).attr("data-sorttype");
        var url = new URL(location.href);
        url.searchParams.set('sortPrice', sort_type);
        location.href = url;
    }
    );

    sort_type = findGetParameter("sortPrice");
    if (sort_type == "asc") {
        $("input[data-sorttype='asc']").prop("checked", true);
    }
    else if (sort_type == "desc") {
        $("input[data-sorttype='desc']").prop("checked", true);
    }
});

$(document).ready(function () {
    var value = $("#order_address").val();
    $("#address").text(value);
})