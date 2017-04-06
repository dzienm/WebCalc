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
<jsp:useBean id="calc" scope="session" class="WebCalc.Calc"/>

<c:out value="${calc.result}"/>
<c:out value="${ticketId}" />


<form method='POST' action="calcControl">
	<div class="container">
  		<div class="col-sm-5"><input type="text" class="form-control" name='name' value="${calc.result}"></div>
  	</div>
  	<div class="container">
  		<div class="col-sm-5">
  	 		<div class="btn-group btn-group-justified">
  				<button type='submit' name='btn' value= "7" class="btn btn-info">7</button>
  				<button type='submit' name='btn' value= "8" class="btn btn-info">8</button>
  				<button type='submit' name='btn' value= "9" class="btn btn-info">9</button>
  				<button type='submit' name='btn' value= "divide" class="btn btn-info">/</button>
  				<button type='submit' name='btn' value= "reset" class="btn btn-warning"/>C</button>
  			</div>
  		</div>
  	</div>
  	
  	<div class="container">
  		<div class="col-sm-5">
  	 		<div class="btn-group btn-group-justified">
  				<button type='submit' name='btn' value= "4" class="btn btn-info">4</button>
  				<button type='submit' name='btn' value= "5" class="btn btn-info">5</button>
  				<button type='submit' name='btn' value= "6" class="btn btn-info">6</button>
  				<button type='submit' name='btn' value= "multiply" class="btn btn-info">*</button>
  				<button type='submit' name='btn' value= "sqrt" class="btn btn-info">sqrt</button>
  			</div>
  		</div>
  	</div>
  	
  	<div class="container">
  		<div class="col-sm-5">
  	 		<div class="btn-group btn-group-justified">
  				<button type='submit' name='btn' value= "1" class="btn btn-info">1</button>
  				<button type='submit' name='btn' value= "2" class="btn btn-info">2</button>
  				<button type='submit' name='btn' value= "3" class="btn btn-info">3</button>
  				<button type='submit' name='btn' value= "plus" class="btn btn-info">+</button>
  				<button type='submit' name='btn' value= "percent" class="btn btn-info">%</button>
  			</div>
  		</div>
  	</div>
  	
  	<div class="container">
  		<div class="col-sm-5">
  	 		<div class="btn-group btn-group-justified">
  				<button type='submit' name='btn' value= "0" class="btn btn-info">0</button>
  				<button type='submit' name='btn' value= "dot" class="btn btn-info">.</button>
  				<button type='submit' name='btn' value= "pm" class="btn btn-info">+/-</button>
  				<button type='submit' name='btn' value= "minus" class="btn btn-info">-</button>
  				<button type='submit' name='btn' value= "calculate" class="btn btn-primary">=</button>
  			</div>
  		</div>
  	</div>
  	
</form>

</body>
</html>