$(document).ready(function(){
  $('#get_book_page').on('click', function(){
    $.ajax({
      url: '/books/:book_id/pages/:id',
      dataType: 'json'
    }).done(function (response){
      $('#save')
    })
  })




});