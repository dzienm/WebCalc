<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Simple JSP Calculator using MVC pattern</title>
</head>
<body>
<jsp:useBean id="calc" scope="session" class="WebCalc.Calc"/>

<c:out value="${calc.result}"/>
<c:out value="${ticketId}" />

<form method='POST' action="calcControl">
	<input type='submit' name='btn' value= "next"/>
</form>

</body>
</html>