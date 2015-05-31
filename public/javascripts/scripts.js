// $('#password').on('keyup', function(){
//       var field = $(this);
//       if (field.val().length < 6){
//         $(this).css({border: 'solid 1px red'});
//       } else {
//         $(this).css({border: 'solid 1px rgb(0, 204, 0)'});
//       }
//     });
//
//
//     $('#user_password').on('keyup', function(){
//       var field = $(this);
//       if (field.val().length < 6){
//         $(this).css({border: 'solid 1px red'});
//         $('.txt').text("password: min 7 characters");
//       } else {
//         $(this).css({border: 'solid 1px rgb(0, 204, 0)'});
//       }
//     });

$('form').submit(function (e) {

  if ($('input:text').is(":empty")) {
    $('p').addClass('error');
    $('p').text('please enter fields');
  };
  e.preventDefault();

});


function checkEmail(email) {
    var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    return re.test(email);
}
