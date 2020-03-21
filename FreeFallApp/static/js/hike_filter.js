function validate_max_category() {

    lt = ['I', 'II', 'III', 'IV', 'V', 'VI'];
    var min_selector = byId("min_category");
    var min = min_selector.options[min_selector.selectedIndex].value;
    var max_selector = byId("max_category");
    var max = max_selector.options[max_selector.selectedIndex].value;

    if (lt.indexOf(min) > lt.indexOf(max)) {
        max_selector.value = min;
    }
}

function validate_min_category() {

    lt = ['I', 'II', 'III', 'IV', 'V', 'VI'];
    var min_selector = byId("min_category");
    var min = min_selector.options[min_selector.selectedIndex].value;
    var max_selector = byId("max_category");
    var max = max_selector.options[max_selector.selectedIndex].value;

    if (lt.indexOf(min) > lt.indexOf(max)) {
        min_selector.value = max;
    }
}

function find_all() {

    send_data = {};
    send_data['name'] = $('#hike_name')[0].value;
    send_data['min_category'] = $('#min_category')[0].value;
    send_data['max_category'] = $('#max_category')[0].value;
    send_data['start_day'] = $('#start_day')[0].value;
    send_data['end_day'] = $('#end_day')[0].value;
    send_data['types'] = $('#types').val().toString();
    send_data['show_hikes_with_completed_groups'] = $('#show_hikes_with_completed_groups')[0].checked;
    send_data['show_hikes_with_close_members_entry'] = $('#show_hikes_with_close_members_entry')[0].checked;
    send_data['show_hikes_with_entry_by_request'] = $('#show_hikes_with_entry_by_request')[0].checked;
    // alert(send_data);
    console.log(send_data);
    $.ajax({
        url: "/get_filtered_hikes/",
        type: 'POST',
        data: send_data,
        beforeSend: function (xhr, settings) {
            function getCookie(name) {
                var cookieValue = null;
                if (document.cookie && document.cookie != '') {
                    var cookies = document.cookie.split(';');
                    for (var i = 0; i < cookies.length; i++) {
                        var cookie = jQuery.trim(cookies[i]);
                        // Does this cookie string begin with the name we want?
                        if (cookie.substring(0, name.length + 1) == (name + '=')) {
                            cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                            break;
                        }
                    }
                }
                return cookieValue;
            }
            if (!(/^http:.*/.test(settings.url) || /^https:.*/.test(settings.url))) {
                // Only send the token to relative URLs i.e. locally.
                xhr.setRequestHeader("X-CSRFToken", getCookie('csrftoken'));
            }
        },
        success: function a(json) {
            if (json.result === "success") {
                $('#container').empty();
                for (i = 0; i < json.hikes.length; i++) {
                    hike = json.hikes[i]
                    jQuery('<div/>', {
                        id: 'hike_' + hike.id,
                        class: 'card'
                    }).appendTo('#container');

                    //img = document.createElement("img");
                    //img.src = 'data:image/gif;base64,' + hike.image
                    $(`<img class="card-img-top" src="data:image/gif;base64,` + hike.image + `" alt="Card image cap">`).appendTo('#hike_' + hike.id);
                    jQuery('<div/>', {
                        id: 'hike_card_body_' + hike.id,
                        class: 'card-body'
                    }).appendTo('#hike_' + hike.id);
                    $('<h2 class="card-title">'+hike.name+'</h2>').appendTo($('#hike_card_body_' + hike.id));
                    $('<p class="card-text">Создатель: '+hike.creator+'</p>').appendTo($('#hike_card_body_' + hike.id));
                    $('<p class="card-text">'+hike.description+'</p>').appendTo($('#hike_card_body_' + hike.id));
                    $('<small class="text-muted">'+hike.start_date+' - '+ hike.end_date +'</small>').appendTo($('#hike_card_body_' + hike.id));
                }
            } else {
                console.log(json);
            }
        }

    });
}