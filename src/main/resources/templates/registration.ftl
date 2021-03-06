<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		<title>Login</title>
		<script src="https://drrjhlchpvi7e.cloudfront.net/libs/stamplay-js-sdk/2.1.4/stamplay.min.js"></script>
		<script> Stamplay.init("lockers"); </script>
	    <title>Registration</title>
		
	</head>
	<body ng-app="app" ng-controller="LockersController as vm">
		 <div class="container">
        <div class="row">
        	<div class="col-md-4 col-md-offset-4" align="center">
        		<div class="form-group">
                    <img src="images/machine1.png" border="0" width="100" height="70">
                </div>
             </div>
             <div class="col-md-4 col-md-offset-4" align="center">
        		<div class="form-group">
        		    <h4 style="color:#337ab7; font-weight: bold;">Create an Account</h4>
                </div>
             </div>
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                    	<div class="pull-right">
                         <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>
                        </div>
                        <h3 class="panel-title">Please fill the form</h3>
                    </div>
                    <div class="panel-body" >
                    	<div id="messageLabel" class="cols-sm-2 control-label" />
                        <form novalidate role="form"  id="registerForm" name="registerForm" > 
                            <fieldset>
                             <div class="form-group"
                             	ng-class="{'has-error': registerForm.name.$touched && registerForm.name.$invalid  , 
                   							 'has-success': registerForm.name.$touched && registerForm.name.$valid   }">
								<label for="name" class="cols-sm-2 control-label">Name</label>
								<div class="cols-sm-3">
                                <div class="input-group">
                                	<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="text" 
                                     ng-pattern="/^([-a-zA-Z\u00e1\u00e9\u00ed\u00f3\u00fa\u00c1\u00c9\u00cd\u00d3\u00da\u00f1\u00d1\u00E4\u00EB\u00EF\u00F6\u00FC\u00C4\u00CB\u00CF\u00D6\u00DC' ]+)$/"
                                     ng-maxlength="20"
                                     ng-model="vm.nameRegister"
                                     class="form-control" name="name" id="name" placeholder="Name" required />
                                </div>
                                <div class="help-block" ng-messages="registerForm.name.$error" 
			     								ng-if="registerForm.name.$touched && registerForm.name.$invalid">
								  <p ng-show="registerForm.name.$error.maxlength">Very long field</p>
								  <p ng-show="registerForm.name.$error.pattern">Invalid Format</p>
								  <p ng-hide="registerForm.name.$error.maxlength || registerForm.name.$error.pattern " ng-message="required">This field is required</p>
							  </div>
                              </div>
						    </div>
						     <div class="form-group" 
                             ng-class="{'has-error': registerForm.email.$touched && registerForm.email.$invalid  , 
                   							 'has-success': registerForm.email.$touched && registerForm.email.$valid   }">
								<label for="name" class="cols-sm-2 control-label">Email</label>
								<div class="cols-sm-3">
                                <div class="input-group">
                                	<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="text" 
                                     ng-pattern="/^[a-zA-Z0-9._-]+@[a-zA-Z]+\.[a-zA-Z.]{2,9}$/" ng-maxlength="50"
                                     ng-maxlength="20"
                                     ng-model="vm.emailRegistrer" 
                                    class="form-control" name="email" id="email" placeholder="email" required/>
                                </div>
                                <div class="help-block" ng-messages="registerForm.email.$error" 
			     								ng-if="registerForm.email.$touched && registerForm.email.$invalid">
								  <p ng-show="registerForm.email.$error.maxlength">Very long field</p>
								  <p ng-show="registerForm.email.$error.pattern">Invalid Format</p>
								  <p ng-hide="registerForm.email.$error.maxlength || registerForm.email.$error.pattern " ng-message="required">This field is required</p>
							  </div>
                              </div>
						    </div>
						    <div class="form-group"
                             ng-class="{'has-error': registerForm.password.$touched && registerForm.password.$invalid  , 
                   							 'has-success': registerForm.password.$touched && registerForm.password.$valid   }">
								<label for="name" class="cols-sm-2 control-label">Create a Password</label>
								<div class="cols-sm-3">   
	                                <div class="input-group">
	                                	<span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
	                                    <input type="password" 
                                         ng-maxlength="12"
                                         ng-model="vm.passwordRegister"
	                                  	 class="form-control" name="password" id="password" placeholder="Password" required/>
	                                </div>
	                                <div class="help-block" ng-messages="registerForm.password.$error" 
			     						ng-if="registerForm.password.$touched && registerForm.password.$invalid">
									  <p ng-show="registerForm.password.$error.maxlength">Very long field</p>
									  <p ng-hide="registerForm.password.$error.maxlength" ng-message="required">This field is required</p>
								  </div>
		                             </div>
							    </div>
							    <div class="form-group"
                             	ng-class="{'has-error': (registerForm.passwordConfirm.$touched && registerForm.passwordConfirm.$invalid) || (registerForm.passwordConfirm.$touched && (vm.passwordConfirmRegister != vm.passwordRegister))  , 
                   							 'has-success': registerForm.passwordConfirm.$touched && registerForm.passwordConfirm.$valid && vm.passwordConfirmRegister == vm.passwordRegister  }">
								<label for="name" class="cols-sm-2 control-label">Confirm your password</label>
								<div class="cols-sm-3">   
	                                <div class="input-group">
	                                	<span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
	                                    <input type="password" 
                                         ng-maxlength="12"
                                         ng-model="vm.passwordConfirmRegister"
	                                  	 class="form-control" name="passwordConfirm" id="passwordConfirm" placeholder="Confirm Password" required/>
	                                </div>
	                                <div class="help-block" ng-messages="registerForm.passwordConfirm.$error" 
			     						ng-if="(registerForm.passwordConfirm.$touched && registerForm.passwordConfirm.$invalid) || (registerForm.passwordConfirm.$touched && (vm.passwordConfirmRegister != vm.passwordRegister))">
									  <p ng-show="vm.passwordConfirmRegister != vm.passwordRegister && vm.passwordRegister!=undefined && vm.passwordRegister != ''">Passwords do not match. Do you want to try again?</p>
									  <p ng-hide="vm.passwordConfirmRegister != vm.passwordRegister && vm.passwordRegister!=undefined && vm.passwordRegister != '' " ng-message="required">This field is required</p>
								  </div>
		                             </div>
							    </div>
                             <div class="form-group"
                             ng-class="{'has-error': registerForm.phoneNumber.$touched && registerForm.phoneNumber.$invalid  , 
                   							 'has-success': registerForm.phoneNumber.$touched && registerForm.phoneNumber.$valid   }">
								<label for="name" class="cols-sm-2 control-label">Phone Number</label>
								<div class="cols-sm-3">   
	                                <div class="input-group">
	                                	<span class="input-group-addon"><i class="fa fa-phone fa" aria-hidden="true"></i></span>
	                                    <input type="text" 
	                                     ng-pattern="/^([0-9]+)$/"
                                         ng-maxlength="12"
                                         ng-model="vm.phoneRegister"
	                                     class="form-control" name="phoneNumber" id="phoneNumber" placeholder="Phone number" required/>
	                                </div>
	                                <div class="help-block" ng-messages="registerForm.phoneNumber.$error" 
			     						ng-if="registerForm.phoneNumber.$touched && registerForm.phoneNumber.$invalid">
									  <p ng-show="registerForm.phoneNumber.$error.maxlength">Very long field</p>
									  <p ng-show="registerForm.phoneNumber.$error.pattern">Invalid Format</p>
									  <p ng-hide="registerForm.phoneNumber.$error.maxlength || registerForm.phoneNumber.$error.pattern " ng-message="required">This field is required</p>
								  </div>
		                             </div>
							    </div>
							    <div class="form-group"
							    ng-class="{'has-error': registerForm.birthdate.$touched && registerForm.birthdate.$invalid  , 
                   							 'has-success': registerForm.birthdate.$touched && registerForm.birthdate.$valid   }">
								<label for="name" class="cols-sm-2 control-label">Date of Birth</label>
								<div class="cols-sm-3">   
	                                <div class="input-group">
	                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i></span>
	                                    <input type="text" ng-model="vm.fechaRegister"
					                    value=""
	                    				data-valuee=""
					                    class="form-control" name="birthdate" id="birthdate" placeholder="Date of birth" />      
					                 </div>
					                 <div class="help-block" ng-messages="registerForm.birthdate.$error" 
			     						ng-if="registerForm.birthdate.$touched && registerForm.birthdate.$invalid">
									  <p ng-message="required">This field is required</p>
								  </div>
	                              </div>
							    </div>
                                
                                <input type="hidden" name="success_url" value="welcome">
                              
                                <div class="form-group ">
							      <button id="reg-button" ng-disabled="registerForm.$invalid" class="btn btn-lg btn-primary btn-block" type="submit"> Sign up	</button>
						        </div>
						        <div class="login-register">
						            <a href="login">Back</a>
						         </div>
                            </fieldset>
                        </form>
                         <div id="container"></div>
					     
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="modal modal-message-success fade" id="ventana" tabindex="-1" role="dialog">
	   <div class="modal-dialog modal-sm" role="document">
	      <div class="modal-content">
	         <form novalidate name="sugerenciaForm">
	            <div  class="modal-body">
	               <h4 class="text-center">User created successfully</h4>
	            </div>
	            <div class="modal-footer">
	              <div class="text-center">
                    <button type="submit" class="btn btn-primary" data-dismiss="modal" >Ok</button>
                  </div>  
	            </div>
	         </form>
	      </div>
	      <!-- /.modal-content -->
	   </div>
	   <!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	
	<div class="modal modal-message-fail fade" id="ventana" tabindex="-1" role="dialog">
	   <div class="modal-dialog modal-sm" role="document">
	      <div class="modal-content">
	         <form novalidate name="sugerenciaForm">
	            <div  class="modal-body">
	               <h4 class="text-center">An error occurred while creating the user, verify the data and try again</h4>
	            </div>
	            <div class="modal-footer">
	              <div class="text-center">
                    <button type="submit" class="btn btn-primary" data-dismiss="modal" >Ok</button>
                  </div>  
	            </div>
	         </form>
	      </div>
	      <!-- /.modal-content -->
	   </div>
	   <!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
    
    <link rel="stylesheet" href="js/pickadate.js-3.5.6/lib/themes/default.css" />
    <link rel="stylesheet" href="js/pickadate.js-3.5.6/lib/themes/default.date.css" />
    <script src="js/pickadate.js-3.5.6/tests/jquery.1.7.0.js"></script>
    <script type="text/javascript" src="js/pickadate.js-3.5.6/lib/picker.js"></script>
    <script type="text/javascript" src="js/pickadate.js-3.5.6/lib/picker.date.js"></script>
    <script src="js/pickadate.js-3.5.6/lib/legacy.js"></script>
    <script type="text/javascript">

        var $input = $( '#birthdate' ).pickadate({
        	formatSubmit: 'dd/mm/yyyy',
            container: '#container',
            closeOnSelect: true,
            closeOnClear: true,
            today: '',
            clear: ''
        })

        var picker = $input.pickadate('picker')
    </script>

		
		
		<script src="css/jquery/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.0.7/parsley.min.js"></script>
	   <!-- <script type="text/javascript" src="js/parsley-validator.js"></script> -->
	    
	    <script type="text/javascript" src="angular/angular.min.js" th:src"@{angular.min.js}" ></script>
	    <script type="text/javascript" src="app/app.module.js" th:src"@{/app/app.module.js}" ></script>
	    <script type="text/javascript" src="app/lockers.controller.js" th:src"@{/app/lockers.controller.js}" ></script>
	    
	    <script src="js/async-login.js"></script>
	    <script type="text/javascript" src="js/lib.js"></script>
  		<script type="text/javascript" src="js/app.js"></script>
	    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	    
	 
		<script src="js/registration.js"></script>	
	    
	</body>
</html>