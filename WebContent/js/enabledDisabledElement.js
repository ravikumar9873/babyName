/**
 * 
 */
function enabledDisabledElement(){
$(document).ready(function() {
	var name = $("#txtName").val();
	var email = $("#txtemailaddress").val();
	var phone = $("#txtPhone").val();
	
    
    //For Name
    $('#nameEdit').click(function () {
        var dad = $(this).parent().parent();
        document.getElementById('settingSaveBtn').disabled=true; 
        document.getElementById('txtName').disabled=false; 
        document.getElementById('nameSave').style="display: inline-block;";
        document.getElementById('nameCancel').style="display: inline-block;";
        document.getElementById('nameEdit').style="display:none";
    });
	

    $('#nameSave').click(function() {
        var dad = $(this).parent();
        if($("#txtName").val()==""){
        	$('#nameErrorMsg').css("display","block");
        	 $('#nameErrorMsg').html("<font color='#C60920' style='font-family:arial;font-size:80%;'>Name can't blank</font>");
        	 document.getElementById('txtName').disabled=false; 
             document.getElementById('nameSave').style="inline-block;";
             document.getElementById('nameCancel').style="inline-block;";
             document.getElementById('nameEdit').style="display:none";
             document.getElementById('settingSaveBtn').disabled=false; 
        }
        else{
        document.getElementById('txtName').disabled=true; 
        document.getElementById('nameSave').style="display:none";
        document.getElementById('nameCancel').style="display:none";
        document.getElementById('nameEdit').style="inline-block";
        $('#nameErrorMsg').css("display","none");
        document.getElementById('settingSaveBtn').disabled=false; 
        }
    });
	
	
    $('#nameCancel').click(function() {
        var dad = $(this).parent();
        if(name!=$("#txtName").val()){
        	   $("#txtName").val(name);
        	}
        document.getElementById('txtName').disabled=true; 
        document.getElementById('nameSave').style="display:none";
        document.getElementById('nameCancel').style="display:none";
        document.getElementById('nameEdit').style="inline-block";
        $('#nameErrorMsg').css("display","none");
        document.getElementById('settingSaveBtn').disabled=false; 
    });
    
    // For Email
    $('#emailEdit').click(function () {
        var dad = $(this).parent().parent();
        document.getElementById('settingSaveBtn').disabled=true; 
        document.getElementById('txtemailaddress').disabled=false; 
        document.getElementById('emailSave').style="display: inline-block;";
        document.getElementById('emailCancel').style="display: inline-block;";
        document.getElementById('emailEdit').style="display:none";
    });
	

    $('#emailSave').click(function() {
        var dad = $(this).parent();
        if($("#txtemailaddress").val()==""){
       	 $('#emailErrorMsg').css("display","block");
       	 $('#emailErrorMsg').html("<font color='#C60920' style='font-family:arial;font-size:80%;'>Email can't blank</font>");
       	 document.getElementById('txtemailaddress').disabled=false; 
            document.getElementById('emailSave').style="inline-block;";
            document.getElementById('emailCancel').style="inline-block;";
            document.getElementById('emailEdit').style="display:none";
            document.getElementById('settingSaveBtn').disabled=false; 
       }
       else{
       document.getElementById('txtemailaddress').disabled=true; 
       document.getElementById('emailSave').style="display:none";
       document.getElementById('emailCancel').style="display:none";
       document.getElementById('emailEdit').style="inline-block";
       $('#emailErrorMsg').css("display","none");
       document.getElementById('settingSaveBtn').disabled=false; 
       }
    });
	
	
    $('#emailCancel').click(function() {
        var dad = $(this).parent();
        if(email != $("#txtemailaddress").val()){
     	   $("#txtemailaddress").val(email);
     	}
        document.getElementById('txtemailaddress').disabled=true; 
        document.getElementById('emailSave').style="display:none";
        document.getElementById('emailCancel').style="display:none";
        document.getElementById('emailEdit').style="inline-block";
        $('#emailErrorMsg').css("display","none");
        document.getElementById('settingSaveBtn').disabled=false; 
    });
    
    // For Phone
    $('#phoneEdit').click(function () {
        var dad = $(this).parent().parent();
        document.getElementById('settingSaveBtn').disabled=true; 
        document.getElementById('txtPhone').disabled=false; 
        document.getElementById('phoneSave').style="display: inline-block;";
        document.getElementById('phoneCancel').style="display: inline-block;";
        document.getElementById('phoneEdit').style="display:none";
    });
	

    $('#phoneSave').click(function() {
        var dad = $(this).parent();
        if($("#txtPhone").val()==""){
          	 $('#phoneErrorMsg').css("display","block");
          	 $('#phoneErrorMsg').html("<font color='#C60920' style='font-family:arial;font-size:80%;'>Phone can't blank</font>");
          	 document.getElementById('txtPhone').disabled=false; 
               document.getElementById('phoneSave').style="inline-block;";
               document.getElementById('phoneCancel').style="inline-block;";
               document.getElementById('phoneEdit').style="display:none";
               document.getElementById('settingSaveBtn').disabled=false; 
          }
        
        //Validation for mobile number count
        if (!(/^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im
				.test(+document.getElementById('txtPhone').value))) {
			 $('#phoneErrorMsg').css("display","block");
			document.getElementById('phoneErrorMsg').classList.remove('d-none');
			$('#phoneErrorMsg').html("<font color='#C60920' style='font-family:arial;font-size:80%;'>Mobile number should be numeric only</font>");
			/*document.getElementById('phoneErrorMsg').innerHTML='Mobile number should be numeric only';*/
			return false;
		}else {
			document.getElementById('phoneErrorMsg').classList.add('d-none');
		}
        
        if (($("#txtPhone").val().length <= 9)||$("#txtPhone").val().length >= 12) {
        	 $('#phoneErrorMsg').css("display","block");
        	$('#phoneErrorMsg').html("<font color='#C60920' style='font-family:arial;font-size:80%;'>Mobile number should between 10-12 digit only</font>");
			document.getElementById('phoneErrorMsg').classList.remove('d-none');
			$('#phoneErrorMsg').html("<font color='#C60920' style='font-family:arial;font-size:80%;'>Mobile number should between 10-12 digit only</font>");
			/*document.getElementById('phoneErrorMsg').innerHTML='Mobile number should between 10-12 digit only';*/
			return false;
		}

		
        
        
        //method ends here
		else{
          document.getElementById('txtPhone').disabled=true; 
          document.getElementById('phoneSave').style="display:none";
          document.getElementById('phoneCancel').style="display:none";
          document.getElementById('phoneEdit').style="inline-block";
          $('#phoneErrorMsg').css("display","none");
          document.getElementById('settingSaveBtn').disabled=false; 
          }
    });
	
	
    $('#phoneCancel').click(function() {
        var dad = $(this).parent();
        if(phone != $("#txtPhone").val()){
      	   $("#txtPhone").val(phone);
      	}
        document.getElementById('txtPhone').disabled=true; 
        document.getElementById('phoneSave').style="display:none";
        document.getElementById('phoneCancel').style="display:none";
        document.getElementById('phoneEdit').style="inline-block";
        $('#phoneErrorMsg').css("display","none");
        document.getElementById('settingSaveBtn').disabled=false; 
    });
    
});

}
function mouseHoverOnSettings(){
	$(document).ready(function(){

		$(".dropdown").hover(function() {
			$('.dropdown-menu', this).stop(true, true).fadeIn("fast");
			$(this).toggleClass('open');
			$('b', this).toggleClass("caret caret-up");
		}, function() {
			$('.dropdown-menu', this).stop(true, true).fadeOut("fast");
			$(this).toggleClass('open');
			$('b', this).toggleClass("caret caret-up");
		});

});
}

function updateUserDetails(){
	event.preventDefault();
	var username = $("#username").val();
	var name = $("#txtName").val();
	var email = $("#txtemailaddress").val();
	var phone = $("#txtPhone").val();
	var url = "http://localhost:8080/MyWebProject/UserInformation/Settings"
	$.ajax({
			url:url,
			type:'GET',
			data:{
				username:username,
				name:name,
				email:email,
				phone:phone
			},
			success: function(result){
				showUpdateMessage(result)
				return false;
			},
			error:function(jqxhr){
				return false;
			}
	});
	
	function showUpdateMessage(result){
		if(result=="SUCCESS"){
			$('#messageDiv').css("display","block");
       /*$('#messageDiv').html("<font color='green' style='font-family:arial;font-size:80%;'>Record updated successfully</font>");*/
		}else if(results == 'FAILURE'){
			 $('#messageDiv').html("<font color='#C60920'style='font-family:arial;font-size:80%;'>Some error occurred. Please refresh the page and update it again</font>");
        	 
		}
		window.setTimeout(function() {
	        $(".alert").fadeTo(5000, 0).slideUp(5000, function(){
	            $(this).remove(); 
	        });
	    }, 4000);
	}	
}

function getUserDetails() {
	event.preventDefault();
	var username = $("#username").val();
	var url = "http://localhost:8080/MyWebProject/UserInformation/Settings"
	$.ajax({
		url:url,
		type:'POST',
		dataType: "json",
		data:{
			username:username		
		},
		success: function(data, result, jqXHR){
			if(result=="success"){
				 $("#txtName").val(data.getterSetter.name);
				 $("#txtemailaddress").val(data.getterSetter.email);
				 $("#txtPhone").val(data.getterSetter.phone);
				 return false;
			} else{
				alert("Something is wrong. Please refresh the page and try again");
				return false;
			}
		},
		error:function(jqxhr){
			alert("Something really bad happened ");
			return false;
		}
});
}
function updatePassword(){
	if (document.getElementById('txtOldPwd').value == "") {
		document.getElementById('txtOldPwdErrorMsg').classList.remove('d-none');
		$('#txtOldPwdErrorMsg').html("<font color='red' style='font-family:arial;font-size:80%;'>Please enter your current Password</font>"); 
		event.preventDefault();
		return false;
	} else {
		document.getElementById('txtOldPwdErrorMsg').classList.add('d-none');
	}
	
	if (document.getElementById('txtNewPwd').value == "") {
		document.getElementById('txtNewPwdErrorMsg').classList.remove('d-none');
		$('#txtNewPwdErrorMsg').html("<font color='red' style='font-family:arial;font-size:80%;'>Please enter your New Password</font>"); 
		event.preventDefault();
		return false;
	} else {
		document.getElementById('txtNewPwdErrorMsg').classList.add('d-none');
	}

	if (document.getElementById('txtNewPwd').value.length <= 4) {
		document.getElementById('txtNewPwdErrorMsg').classList.remove('d-none');
		$('#txtNewPwdErrorMsg').html("<font color='red' style='font-family:arial;font-size:80%;'>New Password should be minimum of 5 character</font>"); 
		event.preventDefault();
		return false;
	} else {
		document.getElementById('txtNewPwdErrorMsg').classList.add('d-none');
	}
	if (document.getElementById('txtNewCPwd').value == "") {
		document.getElementById('txtNewCPwdErrorMsg').classList.remove('d-none');
		$('#txtNewCPwdErrorMsg').html("<font color='red' style='font-family:arial;font-size:80%;'>Please enter your Confirm Password</font>");
		event.preventDefault();
		return false;
	} else {
		document.getElementById('txtNewCPwdErrorMsg').classList.add('d-none');
	}

	if (document.getElementById('txtNewPwd').value != document.getElementById('txtNewCPwd').value) {
		document.getElementById('txtNewCPwdErrorMsg').classList.remove('d-none');
		$('#txtNewCPwdErrorMsg').html("<font color='red' style='font-family:arial;font-size:80%;'>Password does not match</font>");
		event.preventDefault();
		return false;
	} else {
		document.getElementById('txtNewCPwdErrorMsg').classList.add('d-none');
	}
	event.preventDefault();
	var currentPwd = $("#txtOldPwd").val();
	var newPwd = $("#txtNewPwd").val();
	var confirmNewPwd = $("#txtNewCPwd").val();
	var url = "http://localhost:8080/MyWebProject/UserInformation/Settings"

	$.ajax({		
			url:url,
			type: 'POST',
			data:{
				currentPwd:currentPwd,
				newPwd:newPwd,
				confirmNewPwd:confirmNewPwd
			},
			success:function(result){
				showPasswordStatus(result)
				return false;
			},
			error: function(jqxhr){
				return false;
			}
	});
	
	function showPasswordStatus(result){
		if(result=="SUCCESS"){					 
			 document.getElementById('pwdMessageDiv').classList.remove('d-none');
			 $('#pwdMessageDiv').css("display","block");
			 /*$('#pwdMessageDiv').html("<font color='green' style='font-family:arial;font-size:80%;'>Password changed successfully</font>");*/
			 $('#txtOldPwd').val("");
			 $('#txtNewPwd').val("");
			 $('#txtNewCPwd').val("");
		}else{
			$('#pwdMessageDiv').css("display","block");
			 $('#pwdMessageDiv').html("<font color='red' style='font-family:arial;font-size:80%;'>Current Password doesn't match with our record.</font>");
		}
		window.setTimeout(function() {
	        $(".alert").fadeTo(5000, 0).slideUp(5000, function(){
	            $(this).remove(); 
	        });
	    }, 4000);
		
	}
}
