
function userNameValidation(){
		var username = $("#username").val();
		 var url="http://localhost:8080/MyWebProject/UserInformation/RegisterUser"
		        $.ajax({
		            url : url,
		            type: 'POST',
		            data : {
		            	username : username,		        
		            },
		        success : function(results){
		            if(results != null && results != ""){
		            	$('#usernameErrorMsg').css("display","block");
		                showUserValidationMessage(results);                 
		                return true;
		                
		            }else{
		                $('#usernameErrorMsg').css("display","none");
		                $('#usernameErrorMsg').html("");
		                alert("Some exception occurred! Please try again.");
		                
		            }
		        },
		         error: function(jqxhr){
		        	return false;
		        } 

		        });
		            
		     
		    function showUserValidationMessage(results){
		        if(results == 'SUCCESS'){ 
		        	 $('#usernameErrorMsg').html("");
		        	 document.getElementById('usernameErrorMsg').classList.remove('d-none');
		        	 $('#usernameErrorMsg').html("<font color='#C60920' style='font-family:arial;font-size:80%;'>Username already registered. Please use another username.</font>"); 
		        	 document.forms["myForm"]["username"].focus();
		 			return false;
		        }else if(results == 'FAILURE'){		        	 
		        	  $('#usernameErrorMsg').html("<font color='green' style='font-family:arial;font-size:75%;'>Valid Username</font>");		       
		        }
		        else if(results == 'INVALID'){		        	 
		        	$.alert({
		        	    title: 'WARNING!',
		        	    content: "Something is wrong. Please refresh the page and try again",
		        	    /* /* https://craftpip.github.io/jquery-confirm/  */
		        	}); 	       
		        }
		    }
		
}

function emailValidation(){	
		var email = $("#email").val();
		 var url="http://localhost:8080/MyWebProject/UserInformation/RegisterUser"
		        $.ajax({
		            url : url,
		            type: 'POST',
		            data : {
		            	email : email,		        
		            },
		        success : function(results){
		            if(results != null && results != ""){
		            	$('#invalidEmailMsg').css("display","block");
		                emailValidationMessage(results);                 
		                return true;
		                
		            }else{
		                $('#invalidEmailMsg').css("display","none");
		                $('#invalidEmailMsg').html("");
		                alert("Some exception occurred! Please try again.");
		                
		            }
		        },
		         error: function(jqxhr){
		        	return false;
		        } 

		        });
		            
		     
		    function emailValidationMessage(results){
		        if(results == 'SUCCESS'){ 
		        	 $('#invalidEmailMsg').html("");
		        	 document.getElementById('invalidEmailMsg').classList.remove('d-none');
		        	 $('#invalidEmailMsg').html("<font color='#C60920' style='font-family:arial;font-size:80%;'>Email already registered. Please use another email or click Sign in link below.</font>");
		        	 document.forms["myForm"]["email"].focus();
		 			return false;
		        }else if(results == 'FAILURE'){		        	 
		        	  $('#invalidEmailMsg').html("<font color='green' style='font-family:arial;font-size:75%;'>Valid email</font>");		       
		        }
		        else if(results == 'INVALID'){		        	 
		        	$.alert({
		        	    title: 'WARNING!',
		        	    content: "Something is wrong. Please refresh the page and try again",
		        	    /* /* https://craftpip.github.io/jquery-confirm/ */ 
		        	}); 	       
		        }
		        
		    }	
}

function formValidationAndSubmit(){				
		if (document.forms["myForm"]["username"].value == "") {
			document.getElementById('usernameErrorMsg').classList.remove('d-none');
			 document.getElementById('usernameErrorMsg').innerHTML='Username must be filled out'; 
			 event.preventDefault();
			document.forms["myForm"]["username"].focus();
			return false;
		} else  {
			document.getElementById('usernameErrorMsg').classList.add('d-none');
		}

		if (document.forms["myForm"]["username"].value.length <= 6) {
			document.getElementById('usernameErrorMsg').classList.remove('d-none');
			document.getElementById('usernameErrorMsg').innerHTML='Username minium of 6 character';
			event.preventDefault();
			document.forms["myForm"]["username"].focus();
			return false;
		} else {
			document.getElementById('usernameErrorMsg').classList.add('d-none');
		}

		if (document.forms["myForm"]["name"].value == "") {
			document.getElementById('nameErrorMsg').classList.remove('d-none');
			document.getElementById('nameErrorMsg').innerHTML='Name must be filled out'; 
			event.preventDefault();
			document.forms["myForm"]["name"].focus();
			return false;
		} else {
			document.getElementById('nameErrorMsg').classList.add('d-none');
		}

		if (document.forms["myForm"]["email"].value == "") {
			document.getElementById('invalidEmailMsg').classList.remove('d-none');
			document.getElementById('invalidEmailMsg').innerHTML='Email must be filled out'; 
			event.preventDefault();
			document.forms["myForm"]["email"].focus();
			return false;
		} else {
			document.getElementById('invalidEmailMsg').classList.add('d-none');
		}
		
		if (!(/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(myForm.email.value.toLowerCase()))) {
			document.getElementById('invalidEmailMsg').classList.remove('d-none');
			document.getElementById('invalidEmailMsg').innerHTML='You have entered an invalid email address!'; 
			event.preventDefault();
			document.forms["myForm"]["email"].focus();
			return false;
		} else {
			document.getElementById('invalidEmailMsg').classList.add('d-none');
		}
		
		if (document.forms["myForm"]["mobile"].value == "") {
			document.getElementById('mobileErrorMsg').classList.remove('d-none');
			document.getElementById('mobileErrorMsg').innerHTML='Mobile must be filled out'; 
			event.preventDefault();
			document.forms["myForm"]["mobile"].focus();
			return false;
		} else {
			document.getElementById('mobileErrorMsg').classList.add('d-none');
		}

		if (document.forms["myForm"]["mobile"].value.length <= 9) {
			document.getElementById('mobileErrorMsg').classList.remove('d-none');
			document.getElementById('mobileErrorMsg').innerHTML='Mobile number should between 10-12 digit only';
			event.preventDefault();
			document.forms["myForm"]["mobile"].focus();
			return false;
		} else {
			document.getElementById('mobileErrorMsg').classList.add('d-none');
		}

		if (!(/^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im
				.test(+document.forms["myForm"]["mobile"].value))) {
			document.getElementById('mobileErrorMsg').classList.remove('d-none');
			document.getElementById('mobileErrorMsg').innerHTML='Mobile number should be numeric only';
			event.preventDefault();
			document.forms["myForm"]["mobile"].focus();
			return false;
		}

		if (document.forms["myForm"]["pwd"].value == "") {
			document.getElementById('pwdErrorMsg').classList.remove('d-none');
			document.getElementById('pwdErrorMsg').innerHTML='Password must be filled out';
			event.preventDefault();
			document.forms["myForm"]["pwd"].focus();
			return false;
		} else {
			document.getElementById('pwdErrorMsg').classList.add('d-none');
		}

		if (document.forms["myForm"]["pwd"].value.length <= 4) {
			document.getElementById('pwdErrorMsg').classList.remove('d-none');
			document.getElementById('pwdErrorMsg').innerHTML='Password should be minimum of 5 character';
			event.preventDefault();
			document.forms["myForm"]["pwd"].focus();
			return false;
		} else {
			document.getElementById('mobileErrorMsg').classList.add('d-none');
		}
		if (document.forms["myForm"]["cpwd"].value == "") {
			document.getElementById('cpwdErrorMsg').classList.remove('d-none');
			document.getElementById('cpwdErrorMsg').innerHTML='Confirm Password must be filled out';
			event.preventDefault();
			document.forms["myForm"]["cpwd"].focus();
			return false;
		} else {
			document.getElementById('cpwdErrorMsg').classList.add('d-none');
		}

		if (document.forms["myForm"]["pwd"].value != document.forms["myForm"]["cpwd"].value) {
			document.getElementById('cpwdErrorMsg').classList.remove('d-none');
			document.getElementById('cpwdErrorMsg').innerHTML='Password does not match';
			event.preventDefault();
			document.forms["myForm"]["cpwd"].focus();
			return false;
		} else {
			document.getElementById('cpwdErrorMsg').classList.add('d-none');
		}
		$("#formSubmit").prop('disabled', true);
		event.preventDefault();
		var username = $("#username").val();
		var name = $("#name").val();
		var email = $("#email").val();
		var mobile = $("#mobile").val();
		var pwd = $("#pwd").val();
		var cpwd = $("#cpwd").val();
        var url="http://localhost:8080/MyWebProject/UserInformation/RegisterUser"
        $.ajax({
            url : url,
            type: 'POST',
            data : {
            	username : username,
            	name : name,
            	email : email,
            	mobile : mobile,
            	pwd : pwd,
            	cpwd : cpwd
            },
        success : function(results){
        	$("#formSubmit").prop('disabled', false);
            if(results != null && results != ""){
            	$('#messageDiv').css("display","block");
                showMessage(results);                 
                return true;
                
            }else{
                $('#messageDiv').css("display","none");
                $('#messageDiv').html("");
                alert("Some exception occurred! Please try again.");
                
            }
        },
         error: function(jqxhr){
        	return false;
        } 

            });
     
    function showMessage(results){
        if(results == 'SUCCESS'){ 
        	 $('#messageDiv').html("");
        	 document.getElementById('invalidEmailMsg').classList.remove('d-none');
        	 $('#invalidEmailMsg').html("<font color='#C60920' style='font-family:arial;font-size:80%;'>Email is already registered. Please Signin or use another email</font>"); 
        }else if(results == 'FAILURE'){
        	$('#username').val(""); 
        	  $('#invalidEmailMsg').html(""); 
        	  $('#name').val("");  
        	  $('#email').val("");  
        	  $('#mobile').val("");   
        	  $('#pwd').val("");   
        	  $('#cpwd').val("");   
        	  $('#messageDiv').html("<font color='green'style='font-family:arial;font-size:75%;'>Successfully Registered. Click <a href='Login.jsp'>Here</a> to login </font>");
        	 
        	  /* $.alert({
        	    title: 'Congratulations!',
        	    content: "Successfully Registered. Click <a href='Login.jsp'>Signin</a>  link to login.",
        	    /* https://craftpip.github.io/jquery-confirm/ 
        	});  */ 

       }
    } 
}

function validateContactUSForm(){
	
	
	if (document.forms["cmyForm"]["cname"].value =="") {
		document.getElementById('cnameErrorMsg').classList.remove('d-none');
		document.getElementById('cnameErrorMsg').innerHTML='Please enter name';
		event.preventDefault();
		document.forms["cmyForm"]["cname"].focus();
		return false;
	} else {
		document.getElementById('cnameErrorMsg').classList.add('d-none');
	}
	
	if (document.forms["cmyForm"]["cemail"].value =="") {
		document.getElementById('cemailErrorMsg').classList.remove('d-none');
		document.getElementById('cemailErrorMsg').innerHTML='Please enter Email';
		event.preventDefault();
		document.forms["cmyForm"]["cemail"].focus();
		return false;
	} else {
		document.getElementById('cemailErrorMsg').classList.add('d-none');
	}
	
	if (document.forms["cmyForm"]["cmobile"].value =="") {
		document.getElementById('cmobileErrorMsg').classList.remove('d-none');
		document.getElementById('cmobileErrorMsg').innerHTML='Please enter Contact number';
		event.preventDefault();
		document.forms["cmyForm"]["cmobile"].focus();
		return false;
	} else {
		document.getElementById('cmobileErrorMsg').classList.add('d-none');
	}
	
	if (document.forms["cmyForm"]["cmessage"].value =="") {
		document.getElementById('cmsgErrorMsg').classList.remove('d-none');
		document.getElementById('cmsgErrorMsg').innerHTML='Please enter Contact number';
		event.preventDefault();
		document.forms["cmyForm"]["cmessage"].focus();
		return false;
	} else {
		document.getElementById('cmsgErrorMsg').classList.add('d-none');
	}
	
	
	$("#contactFormSubmit").prop('disabled', true);
	event.preventDefault();
	var custname = $("#cname").val();
	var custemail = $("#cemail").val();
	var custmobile = $("#cmobile").val();
	var custmsg = $("#cmessage").val();
	
    var url="http://localhost:8080/MyWebProject/UserInformation/Contact"
    $.ajax({
        url : url,
        type: 'POST',
        async: false,
        data : {
        	custname : custname,
        	custemail : custemail,
        	custmobile : custmobile,
        	custmsg : custmsg
        },
    success : function(results){
    	$("#contactFormSubmit").prop('disabled', false);
        if(results != null && results != ""){
        	$('#cmessageDiv').css("display","block");
            showCMessage(results);                 
            return true;
            
        }else{
            $('#cmessageDiv').css("display","none");
            $('#cmessageDiv').html("");
            alert("Some exception occurred! Please try again.");
            
        }
    },
     error: function(jqxhr){
    	return false;
    } 

        });

function showCMessage(results){
    if(results == 'SUCCESS'){ 
    	 /*$('#cmessageDiv').html("");*/
    	 document.getElementById('cemailErrorMsg').classList.remove('d-none');
    	/* $('#cmyForm').css("display","none");*/
    	/* $('#cmessageDiv').html("<h4><font color='green'>Thank you. We will contact you soon.</font></h4>");*/ 
    	 /*$('#cmessageDiv').html("<strong>Success!</strong> You have been signed in successfully!");*/
    	 $('#cname').val(""); 
   	  	$('#cemail').val(""); 
   	  	$('#cmobile').val("");  
   	  	$('#cmessage').val("");
    }else if(results == 'FAILURE'){
    	  $('#cname').val(""); 
    	  $('#cemail').val("");  
    	  $('#cmobile').val("");  
    	  $('#cmessage').val("");  
    	  $('#cmessageDiv').html("<font color='#C60920'style='font-family:arial;font-size:75%;'>Some error occured.</font>");    	   
    }
    
    window.setTimeout(function() {
        $(".alert").fadeTo(5000, 0).slideUp(5000, function(){
            $(this).remove(); 
        });
    }, 4000);
}
}

function forgotPasswordPageValidation() {

	if ($("#emailAddress").val() == "") {
		$('#emailAddressErrorMsg').css("display","block");
		$('#emailAddressErrorMsg').html("<font color='red' style='font-family:arial;font-size:80%;'>Email is required</font>");
		$("#emailAddress").focus;
		event.preventDefault();
		return false;
	} else {
		document.getElementById('emailAddressErrorMsg').classList.add('d-none');
	}
	if (!(/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test($("#emailAddress").val().toLowerCase()))) {
		$('#emailAddressErrorMsg').css("display","block");
		document.getElementById('emailAddressErrorMsg').classList.remove('d-none');
		$('#emailAddressErrorMsg').html("<font color='red' style='font-family:arial;font-size:80%;'>You have entered an invalid email address!</font>");
		event.preventDefault();
		$("#emailAddress").focus;
		return false;
	} else {
		document.getElementById('emailAddressErrorMsg').classList.add('d-none');
	}
	$("#forgotPwdSubmit").prop('disabled', true);
	event.preventDefault();
	var emailAddress = $("#emailAddress").val();
	 var url="http://localhost:8080/MyWebProject/UserInformation/ForgotPassword"
		 $.ajax({
			 url:url,
			 type:'POST',
			 data:{
				 emailAddress:emailAddress
			 },
			 success:function(result){		
				 $("#forgotPwdSubmit").prop('disabled', false);
				 if(result != null && result != ""){
			        	$('#emailAddressErrorMsg').css("display","block");
			            showCMessage(result);                 
			            return true;
			            
			        }else{
			            alert("Some exception occurred! Please try again.");			            
			        }
			    },
			     error: function(jqxhr){
			    	return false;
			    }				 			 
		 })
		 function showCMessage(result){
		    if(result == 'SUCCESS'){ 
		    	
	        	var successUrl = "/MyWebProject/UserInformation/reset_email_sent.jsp"; 
	            window.location.href = successUrl;
	            /*$('#emailAddressErrorMsg').css("display","block");
				document.getElementById('emailAddressErrorMsg').classList.remove('d-none');
				$('#emailAddressErrorMsg').html("<font color='green' style='font-family:arial;font-size:80%;'>Password is sent to your registered email address.</font>");				     	   
		   */

		    }else if(result == 'FAILURE'){
		    	$('#emailAddressErrorMsg').css("display","block");
				document.getElementById('emailAddressErrorMsg').classList.remove('d-none');
				$('#emailAddressErrorMsg').html("<font color='red' style='font-family:arial;font-size:80%;'>Oops, this email is not registered with us. Please try with another email.</font>");				     	   
		    }
		    
		    window.setTimeout(function() {
		        $(".alert").fadeTo(5000, 0).slideUp(5000, function(){
		            $(this).remove(); 
		        });
		    }, 4000);
		}
}

function resetPasswordPageValidation() {

	if ($("#resetPassword").val() == "") {
		document.getElementById('resetPasswordErrorMsg').classList.remove('d-none');
		$('#resetPasswordErrorMsg').css("display","block");
		$('#resetPasswordErrorMsg').html("<font color='red' style='font-family:arial;font-size:80%;'>Password is required</font>");
		$("#resetPassword").focus;
		event.preventDefault();
		return false;
	} else {
		document.getElementById('resetPasswordErrorMsg').classList.add('d-none');
	}
	if ($("#resetCPassword").val() == "") {
		document.getElementById('resetCPasswordErrorMsg').classList.remove('d-none');
		$('#resetCPasswordErrorMsg').css("display","block");
		$('#resetCPasswordErrorMsg').html("<font color='red' style='font-family:arial;font-size:80%;'>Confirm Password is required</font>");
		$("#resetPassword").focus;
		event.preventDefault();
		return false;
	} else {
		document.getElementById('resetCPasswordErrorMsg').classList.add('d-none');
	}
	if ($("#resetPassword").val() != $("#resetCPassword").val()) {
		document.getElementById('resetCPasswordErrorMsg').classList.remove('d-none');
		$('#resetCPasswordErrorMsg').css("display","block");
		$('#resetCPasswordErrorMsg').html("<font color='red' style='font-family:arial;font-size:80%;'>Confirm Password doesn't match</font>");
		$("#resetPassword").focus;
		event.preventDefault();
		return false;
	} else {
		document.getElementById('resetCPasswordErrorMsg').classList.add('d-none');
	}
	
}