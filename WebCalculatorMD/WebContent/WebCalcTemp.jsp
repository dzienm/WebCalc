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
<div class = "col-4">
  	<input type="text" class="form-control" name='name' value="${calc.result}">
</div>
	<input type='submit' name='btn' value= "next" class="btn btn-secondary"/>
	
</form>

<select class="form-control form-control-lg">
  <option>Large select</option>
</select>
<select class="form-control">
  <option>Default select</option>
</select>
<select class="form-control form-control-sm">
  <option>Small select</option>
</select>

<div class="row">
  <div class="col-sm-4">.col-sm-4</div>
  <div class="col-sm-4">.col-sm-4</div>
  <div class="col-sm-4">.col-sm-4</div>
</div>

<form method='POST' action="calcControl">
	<div class="row">
  		<div class="col-sm-4"><input type="text" class="form-control" name='name' value="${calc.result}"></div>
  		<div class="col-sm-1"><input type='submit' name='btn' value= "C" class="btn btn-info"/></div>
  	</div>
  	<div class="row">
  		<div class="col-sm-1"><input type='submit' name='btn' value= "7" class="btn btn-info btn-block"/></div>
  			<div class="col-sm-1"><input type='submit' name='btn' value= "8" class="btn btn-info btn-block"/></div>
  			<div class="col-sm-1"><input type='submit' name='btn' value= "9" class="btn btn-info btn-block"/></div>
  			<div class="col-sm-1"><input type='submit' name='btn' value= "/" class="btn btn-info btn-block"/></div>
  			<div class="col-sm-1"><input type='submit' name='btn' value= "sqrt" class="btn btn-info"/></div>
  		
  	</div>
</form>
<div class="container">
  <h1>Hello World!</h1>
  <div class="row">
    <div class="col-sm-6" style="background-color:yellow;">
      <p>Lorem ipsum...</p>
    </div>
    <div class="col-sm-6" style="background-color:pink;">
     <input type='submit' name='btn' value= "/" class="btn btn-info btn-block"/>
    </div>
  </div>
</div>
<button type="button" class="btn btn-primary disabled">Disabled Primary</button>

<div class="btn-group">
  			<div class="col-sm-1"><input type='submit' name='btn' value= "7" class="btn btn-info btn-block"/></div>
  			<div class="col-sm-1"><input type='submit' name='btn' value= "8" class="btn btn-info btn-block"/></div>
  			<div class="col-sm-1"><input type='submit' name='btn' value= "9" class="btn btn-info btn-block"/></div>
  			<div class="col-sm-1"><input type='submit' name='btn' value= "/" class="btn btn-info btn-block"/></div>
  			<div class="col-sm-1"><input type='submit' name='btn' value= "sqrt" class="btn btn-info"/></div>
  		</div>

<div class="col-sm-4">
 <div class="btn-group btn-group-justified">
  <button type="button" class="btn btn-primary btn-block">Apple</button>
  <button type="button" class="btn btn-primary">Samsung</button>
  <button type="button" class="btn btn-primary">Sony</button>
</div>
</div>
<br>
<form method='POST' action="calcControl">
	<div class="row">
  		<div class="col-sm-4"><input type="text" class="form-control" name='name' value="${calc.result}"></div>
  		<div class="col-sm-1"><input type='submit' name='btn' value= "C" class="btn btn-info btn-block"/></div>
  	</div>
  	<div class="row">
  		<div class="col-sm-5">
  	 		<div class="btn-group btn-group-justified">
  				<button type='submit' name='btn' value= "7" class="btn btn-info">7</button>
  				<button type='submit' name='btn' value= "8" class="btn btn-info">8</button>
  				<button type='submit' name='btn' value= "9" class="btn btn-info">9</button>
  				<button type='submit' name='btn' value= "divide" class="btn btn-info">/</button>
  				<button type='submit' name='btn' value= "sqrt" class="btn btn-info">sqrt</button>
  			</div>
  		</div>
  	</div>
  	
  	<div class="row">
  		<div class="col-sm-5">
  	 		<div class="btn-group btn-group-justified">
  				<button type='submit' name='btn' value= "4" class="btn btn-info">4</button>
  				<button type='submit' name='btn' value= "5" class="btn btn-info">5</button>
  				<button type='submit' name='btn' value= "6" class="btn btn-info">6</button>
  				<button type='submit' name='btn' value= "multiply" class="btn btn-info">*</button>
  				<button type='submit' name='btn' value= "percent" class="btn btn-info">%</button>
  			</div>
  		</div>
  	</div>
  	
</form>

<div class="row">
    <div class="col-md-4">
        <div class="btn-group btn-group-justified">
        <button type='submit' name='btn' value= "4" class="btn btn-info">4</button>
        </div>
    </div>
    <div class="col-md-8">
        <div class="row">
            <div class="col-md-6">
                <div class="well">2</div>
            </div>
            <div class="col-md-6">
                <div class="well">3</div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="well">4</div>
            </div>
            <div class="col-md-6">
                <div class="well">5</div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="well">6</div>
    </div>
    <div class="col-md-4">
        <div class="well">7</div>
    </div>
    <div class="col-md-4">
        <div class="well">8</div>
    </div>
</div>

</body>
</html>