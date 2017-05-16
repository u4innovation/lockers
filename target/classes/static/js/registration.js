

/*Stamplay.currentUser((function () {
  refreshData();
}));
*/
var registrationFn = function (e) {
  e.preventDefault();
  var isValid = true ; //$('#reg-form').parsley().validate();

  if (isValid) {

    var nombre = $('#name').val();
    var telefono = $('#phoneNumber').val();
    var fechaNacimiento = $('#birthdate').val();
    var registrationData = {
      nombre: nombre,
      telefono: telefono,
      fechaNacimiento: fechaNacimiento
    };
    
    Stamplay.Object("usuarios")
    .save(registrationData)
    .then(function(res) {
      // Success
    	console.log('save usuarios user.signup ' + res);
    	alert("Success");
    }, function(err) {
      // Handle Error
    	console.log('Error during user.signup ' + err.message);
    });

    /*Stamplay.User.signup(registrationData)
      .then(refreshData, handleSignupError)
      .then(finalCb, handleRefreshDataError)
      .done()*/
  }
}

var registerUser = function (registrationData) {
  return Stamplay.User.signup(registrationData)
}

var handleSignupError = function (err) {
  /**
   * Error handling for user.signup
   */
  console.log('Error during user.signup ' + err.message);
}

var handleRefreshDataError = function (err) {
  console.log('Error during refreshData ' + err);
}

var finalCb = function () {
  console.log('All good');
}

var refreshData = function () {
  if (true) { //Stamplay.User.isLogged()
    $('.hide-if-logged').hide();
    $('.show-if-logged').show();
    /* Header */
    var html = 'Currently logged in as : ' + Stamplay.User.get('email');
    $('#current-status').html(html);

  } else {
    $('.show-if-logged').hide();
  }
}
$('#reg-button').on('click', registrationFn);