<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Simple JSP Calculator using MVC pattern</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:useBean id="calc" scope="session" class="WebCalc.Model.Calc"/>


<form method='POST' action="calcControl">
<!--  mozna skorzystac z ukrytych pol do sterowania albo podwojnego/potrojnego Controllera

<input type="hidden" name="bday" value="jestem ukryty"> -->
	<div class="container">
  		<div class="col-sm-5"><input type="text" class="form-control" name='digitizer' value="ERR"  STYLE="color: #FF0000"></div>
  	</div>
  	<!-- dla przegladarek Firefox, Chrome kazdy przycisk trzeba opakowac tagiem button group, 
  	w IE dziala normalnie, wystarczy ze sa buttony bez dodatkowego opakowania -->
  	<div class="container">
  		<div class="col-sm-5">
  	 		<div class="btn-group btn-group-justified">
  	 			<div class="btn-group">
  					<button type='submit' name='btnNum' value= "7" class="btn btn-info disabled">7</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btnNum' value= "8" class="btn btn-info disabled">8</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btnNum' value= "9" class="btn btn-info disabled">9</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btnOp' value= "divide" class="btn btn-info disabled">/</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btn' value= "reset" class="btn btn-warning">C</button>
  				</div>
  			</div>
  		</div>
  	</div>
  	
  	<div class="container">
  		<div class="col-sm-5">
  	 		<div class="btn-group btn-group-justified">
  	 			<div class="btn-group">
  					<button type='submit' name='btnNum' value= "4" class="btn btn-info disabled">4</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btnNum' value= "5" class="btn btn-info disabled">5</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btnNum' value= "6" class="btn btn-info disabled">6</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btnOp' value= "multiply" class="btn btn-info disabled">*</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btnOp' value= "sqrt" class="btn btn-info disabled">sqrt</button>
  				</div>
  			</div>
  		</div>
  	</div>
  	
  	<div class="container">
  		<div class="col-sm-5">
  	 		<div class="btn-group btn-group-justified">
  	 			<div class="btn-group">
  				<button type='submit' name='btnNum' value= "1" class="btn btn-info disabled">1</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btnNum' value= "2" class="btn btn-info disabled">2</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btnNum' value= "3" class="btn btn-info disabled">3</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btnOp' value= "plus" class="btn btn-info disabled">+</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btnOp' value= "percent" class="btn btn-info disabled">%</button>
  				</div>
  			</div>
  		</div>
  	</div>
  	
  	<div class="container">
  		<div class="col-sm-5">
  	 		<div class="btn-group btn-group-justified">
  	 			<div class="btn-group">
  					<button type='submit' name='btnNum' value= "0" class="btn btn-info disabled">0</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btn' value= "dot" class="btn btn-info disabled">.</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btn' value= "pm" class="btn btn-info disabled">+/-</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btnOp' value= "minus" class="btn btn-info disabled">-</button>
  				</div>
  				<div class="btn-group">
  					<button type='submit' name='btn' value= "calculate" class="btn btn-primary disabled">=</button>
  				</div>
  			</div>
  		</div>
  	</div>
  	
</form>

</body>
</html>