<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>${username}</h1>
	<c:if test="${check !=null}">
		<c:out value="${check}" />
	</c:if>
	<c:if test="${qrCode !=null}">
		<h1>QR Page</h1>
		<img alt='Embedded Image' src='data:image/png;base64,${qrCode}'  />
	</c:if>
	<form action="/validate/key" method="post">
		<input type="hidden" name="username" value="${username}">
		<label for="code" class="sr-only">Authentication Code:</label>
		<input type="text" id="code" name="code" class="form-control" placeholder="XXXXXX" required pattern="[0-9]+">
		<!--  This will be automatically made available by Spring Security -->

		<br>
		<button type="submit" class="btn btn-lg btn-primary btn-block">Verify</button>
	</form>
</body>
</html>