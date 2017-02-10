$(document).ready(function() {
  $('#main-heading').animate({
      'opacity': '1',
      'margin-bottom':'80px'
    },500);
  $('#my-form').submit(function(e) {
    e.preventDefault();
    $.ajax({
      method: 'POST',
      url: '/urls',
      data: $(this).serialize(),
      dataType: 'json',
      success: function(data) {
        // ('#my-form').html(data)

        $('.table').append('<div class=\"table-row\"><div class=\"table-cell\">' + data.long_url + '</div><div class=\"table-cell\"><a href=\"http://localhost:9393/\">http://localhost:9393' + data.short_url + '</a></div><div class=\"table-count\">' + data.click_count + '</div></div>')

        // $('.table').append('<div>' + data.long_url + '</div>')
        // var content = $(data.short_url).html();
        // $("html").text(content);
        // console.log(data.short_url)

      }
      // error: function(data) {
      //   console.log('fail')
    });
  });
});





  // $('#main-heading').animate({
  //   'color': '#ff0000',
  //   'margin-top': '100px'
  // }, 1000);




// $('#main-heading').Slide(500, function() {
//   $(this).slideUp(500);
// });
