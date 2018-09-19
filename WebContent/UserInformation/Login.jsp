<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
<script	scr="<%=request.getContextPath() %>/js/jquery-3.3.1.min.js"></script>
<script	scr="<%=request.getContextPath() %>/js/jquery-migrate-1.4.1.min.js"></script>
<script	scr="<%=request.getContextPath() %>/js/jquery-ui-1.10.3.custom.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.0/jquery-confirm.min.js"></script></head>

<script>

</script>
<body class="mt-8">

	<div>
		  
		  <a class="navbar-brand logo-img" href="/MyWebProject/Index.jsp">Logo</a> 
		  </div>
	
	<div class="m-auto text-center mt-5" style="width: 325px">

		<form action="Login" name="myForm" id="myForm" method="post"
			class="mt-5 border px-4 py-5" ><!-- onsubmit="return validateForm()" -->
			<h3>Member Login</h3>
			<table class="w-100">
				<tbody>
					<tr>
						<td><input type="text" placeholder="Username/email"
							name="username" id="uname" class="form-control mt-2" />
							<span id="unameErrorMsg" class="text-danger"></span></td>
					</tr>
					<tr></tr>

					<tr>
						<td><input type="password" placeholder="Password" name="pwd" id="pwd"
							class="form-control mt-2" /> <span id="pwdErrorMsg" class="text-danger"></span></td><br>
					</tr>
					
				</tbody>
				<tr></tr>

			</table><br/>
			<button type="submit" name="submit" id="loginSubmit" class="btn btn-primary">Login</button>
			<a href="ForgotPassword.jsp">Forgot Password?</a><br> <br>
			New? <a href="RegisterUser.jsp">Signup</a>
			<div id="messageDiv" style="display:none;"></div>
		</form>
	</div>
	
	<script>
	
	$("#loginSubmit").on('click', function(event){		
		if (document.forms["myForm"]["uname"].value == "") {
			document.getElementById('unameErrorMsg').classList.remove('d-none');
			document.getElementById('unameErrorMsg').innerHTML="Username/Email can't be blank";
			document.forms["myForm"]["uname"].focus();
			return false;
		} else {
			document.getElementById('unameErrorMsg').classList.add('d-none');
		}

		if (document.forms["myForm"]["pwd"].value == "") {
			document.getElementById('pwdErrorMsg').classList.remove('d-none');
			document.getElementById('pwdErrorMsg').innerHTML="Password can't be blank";
			document.forms["myForm"]["pwd"].focus();
			return false;
		} else {
			document.getElementById('pwdErrorMsg').classList.add('d-none');
		}
	
		$("#loginSubmit").prop('disabled', true);
		var username = $("#uname").val();
		var pwd = $("#pwd").val();
        var url="http://localhost:8080/MyWebProject/UserInformation/Login"
        $.ajax({
            url : url,
            type: 'POST',
            data : {
            	username : username,
            	pwd : pwd
            },
        success : function(results){
        	$("#loginSubmit").prop('disabled', false);
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
            });
     
    function showMessage(results){
        if(results == 'SUCCESS'){ 
        	var successUrl = "/MyWebProject/UserInformation/Welcome.jsp"; 
            window.location.href = successUrl;

        }else if(results == 'FAILURE'){        	 
        	  $('#messageDiv').html("<font color='#C60920' style='font-family:arial;font-size:80%;'>Invalid Username/email or password. Please use <a href='ForgotPassword.jsp'>Forgot Password</a> link to reset.</font>"); 

        }
    }
	
    </script>
</body>
</html>