<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ include file="/resources/MenuBar.jsp" %>
	
<!DOCTYPE html>
<html>
<head  >
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"	crossorigin="anonymous"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet"	href="<%=request.getContextPath()%>/css/style.css"	crossorigin="anonymous">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script	src="<%=request.getContextPath()%>/js/enabledDisabledElement.js"></script>
<script	src="<%=request.getContextPath()%>/js/enabledDisabledElement.js"></script>
<script	src="<%=request.getContextPath()%>/js/cancelForm.js"></script>
<meta charset="ISO-8859-1">
<title>Settings Page</title>
</head>
<body  onload="getUserDetails()">
<form action="Settings" name="cmyForm" id="cmyForm" method="post">
	<div class="myNewSettingL mt-5 border px-5 py-5"> 
		<div class="SetAccDiv">
			<h2>Account Overview</h2>
			<div class="ndivider"></div>
			
			<div class="SetnewDivrow">
				<label> Username </label> 
				 <span> <input name="username" class="ba" type="text" maxlength="35" id="username" value="${username}" disabled="disabled"> </span> 				  		
			</div> 
			
			 <div class="SetnewDivrow">
				<label> Name </label> 
				<span> <input name="txtName" type="text" maxlength="35" id="txtName" value="${data.getterSetter.name}" disabled="disabled">  				  
				  <a href="#" id="nameEdit" class="edit" style="inline-block" onclick="enabledDisabledElement()">Edit</a></span> 
				 <span> <a href="#" id="nameSave" class="edit" style="display:none">Save</a></span>
				 <span> <a href="#" id="nameCancel" class="edit" style="display:none">Cancel</a></span>	
				 <div id="nameErrorMsg" style="display:none"></div>
			</div>
			
			<div class="SetnewDivrow">
				<label> Email </label> 
				<span> <input name="txtemailaddress" type="text" maxlength="50" id="txtemailaddress" value="${data.getterSetter.email}" disabled="disabled">				  
				  <a href="#" id="emailEdit" class="edit" style="inline-block" onclick="enabledDisabledElement()">Edit</a></span> 
				  <span><a href="#" id="emailSave" class="edit" style="display:none">Save</a></span>
				 <span> <a href="#" id="emailCancel" class="edit" style="display:none">Cancel</a></span>
				 <div id="emailErrorMsg" style="display:none"></div>
			</div>
			
			<div class="SetnewDivrow">
				<label> Password </label> 
				<span><a href="#"	data-toggle="modal" data-target="#myModal"">Change Password </a>
				</span>
			</div>
			
			
			<div class="SetnewDivrow">
				<label> Phone Number </label> 
				<span> <input name="txtPhone" type="text" id="txtPhone"	maxlength="20" value="${phone}" disabled="disabled">  				  
				  <a href="#" id="phoneEdit" class="edit" style="inline-block" onclick="enabledDisabledElement()">Edit</a></span> 
				  <span><a href="#" id="phoneSave" class="edit" style="display:none">Save</a></span>
				  <span><a href="#" id="phoneCancel" class="edit" style="display:none">Cancel</a></span>
				  <div id="phoneErrorMsg" style="display:none"></div>
			</div>
			<div class="SetnewDivrow">
			<br>
			<button type="submit" name="submit" id="settingSaveBtn" class="btn btn-primary form-control mt-3 " style="inline:block" onclick="updateUserDetails()">UPDATE</button>			
			 <div id="messageDiv" style="display:none;">
			<!-- <div class="alert alert-success" id="messageDiv" style="display:none;"> -->
			<div class="alert alert-success" role="alert">
  			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  			<strong>Success!</strong> Record updated successfully!</div></div>
    			
 			 </div>
			</div>
		</div>

		
		<div class="modal fade" id="myModal" role="dialog">
		
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header" style="width: 100%;">					
						<h4 class="modal-title">Change Password</h4>	
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="SetnewDivrow">
						<label> Current Password </label> 
						<span> <input name="txtOldPwd" type="password" id="txtOldPwd" maxlength="20">
						</span> <div id="txtOldPwdErrorMsg" class="text-danger"></div>
					</div>
					<div class="SetnewDivrow">
						<label> New Password </label> 
						<span> <input name="txtNewPwd" type="password" id="txtNewPwd" maxlength="20">
						</span> <div id="txtNewPwdErrorMsg" class="text-danger"></div>
					</div>

					<div class="SetnewDivrow">
						<label> Confirm Password </label> 
						<span> <input name="txtNewCPwd" type="password" id="txtNewCPwd" maxlength="20">
						</span> <div id="txtNewCPwdErrorMsg" class="text-danger"></div>
					</div>
					<div class="SetnewDivrow">
						<button type="submit" name="submit"	id="changePwdSaveBtn" class="btn btn-primary mt-3 " onclick="updatePassword()">Save</button>
						<button type="cancel" name="cancel"	id="changePwdCancelBtn" class="btn btn-primary mt-3" data-dismiss="modal">Cancel </button>						
					 <div id="pwdMessageDiv" style="display:none;">
					 <div class="alert alert-success" role="alert">
		  			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  			Password changed successfully!</div>
					 </div>
					</div>
					
					<br />
				</div>
			</div>

		</div> 

	</div>
</form>
</body>


</html>