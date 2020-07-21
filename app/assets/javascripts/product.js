$(document).ready(function() {
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

$(document).on('turbolinks:load', function() {
    $("input[name='s_prices']").on('click', function()
        {
            var sort_type = $(this).attr("data-sorttype");            
            var url = new URL(location.href);
            url.searchParams.set('sortPrice', sort_type);            
            location.href = url;
        }        
    );

    sort_type = findGetParameter("sortPrice");
    if (sort_type == "asc")
    {
        $("input[data-sorttype='asc']").prop("checked", true);
    }
    else if (sort_type == "desc")
    {
        $("input[data-sorttype='desc']").prop("checked", true);
    }
});