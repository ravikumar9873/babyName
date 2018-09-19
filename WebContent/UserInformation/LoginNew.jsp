<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>
<form class="form-horizontal">
    <div class="control-group warning">
      <label class="control-label" for="inputWarning">Input with warning</label>
      <div class="controls">
        <input type="text" id="inputWarning">
        <span class="help-inline">Something may have gone wrong</span>
      </div>
    </div>
    <div class="control-group error">
      <label class="control-label" for="inputError">Input with error</label>
      <div class="controls">
        <input type="text" id="inputError">
        <span class="help-inline">Please correct the error</span>
      </div>
    </div>
    <div class="control-group info">
      <label class="control-label" for="inputInfo">Input with info</label>
      <div class="controls">
        <input type="text" id="inputInfo">
        <span class="help-inline">Username is taken</span>
      </div>
    </div>
    <div class="control-group success">
      <label class="control-label" for="inputSuccess">Input with success</label>
      <div class="controls">
        <input type="text" id="inputSuccess">
        <span class="help-inline">Woohoo!</span>
      </div>
    </div>
  </form>
</div>
</body>
</html>