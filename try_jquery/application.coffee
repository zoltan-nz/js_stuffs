$ ->
  newtext = $('<p>New text</p>')
  $('button').on 'click', ->
    newtext.appendTo('#box3')
