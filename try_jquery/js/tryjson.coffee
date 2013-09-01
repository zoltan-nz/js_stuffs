$ ->
  $('#download').on 'click', ->
    $.getJSON 'forajax/genjson.php', (data) ->
      insertThis = $.map data, (row, index )->
        listItem = $("<li></li>")
        $('<h3>'+row.name+'</h3>').appendTo(listItem)
        $('<p>'+row.status+'</p>').appendTo(listItem)
        listItem
      $('#inserthere').hide().html(insertThis).fadeIn()

  $('#flickr_button').on 'click', ->
    $.getJSON 'http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?', {tags: $('#search').val(), tagmode: 'any', format: 'json'}, (data) ->
      $.each data.items, (i, item) ->
        $('<img/>').attr('src', item.media.m).appendTo('#images')
        return false if (i == 100)

