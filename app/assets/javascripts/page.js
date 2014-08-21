$(document).ready(function(){
  $('#get_page').on('click', function(){
    $.ajax({
      url: '/story',
      dataType: 'json'
    }).done(function (response){
      $('#story')
    })
  })




});