<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HCL Internal Bank</title>
<style>
.error{
color: #EF1313;
font-style:italic;
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
<!-- formbean is used to get ui(weblayer) -->
<form:form action="transfer" method="post" modelAttribute="transferbean">
	<table>
		<tr>
			<td>Enter From Account:</td>
			<td><form:input path="fromAccountId"/><form:errors path="fromAccountId" class="error"/></td>
		</tr>
		<tr>
			<td>Enter TO Account:</td>
			<td><form:input path="toAccountId"/><form:errors path="toAccountId" class="error"/></td>
		</tr>
		<tr>
			<td>Enter Amount:</td>
			<td><form:input path="amount"/><form:errors path="amount" class="error"/></td>
		</tr>
		<tr>
			<td><input type="submit"></td>
		</tr>
	</table>
</form:form>
</body>
</html>