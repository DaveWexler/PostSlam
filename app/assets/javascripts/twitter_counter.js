function update(text){
  var length = text.value.length
  chars_remaining = 140 - length
  $('#char').text("" + chars_remaining)
  if (chars_remaining < 0) {
    disableTwitter()
  } else {
    enableTwitter()
  }
}

function disableTwitter () {
  $('#twitter-box').attr('checked', false).css("visibility", "hidden")
}
function enableTwitter () {
  $('#twitter-box').attr('checked', true).css("visibility", "visible")
}
