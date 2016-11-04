// $(document).ready(function(){
  // var chars_remaining = 140
  // $('#char').text("" + chars_remaining)

function update(text){
  // $('#text-body').keyup(function(e){
    var length = text.value.length
    chars_remaining = 140 - length
    $('#char').text("" + chars_remaining)
    if (chars_remaining < 0) {

    }

  // })
}
// })
