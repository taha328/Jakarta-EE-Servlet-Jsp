<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple Calculator</title>
</head>
<body>
<h2>Simple Calculator</h2>
<form action="CalculatorServlet" method="post">
    <input type="number" name="num1" placeholder="Enter number 1" required>
    <input type="number" name="num2" placeholder="Enter number 2" required><br><br>
    <input type="radio" name="operator" value="add" required> Add
    <input type="radio" name="operator" value="subtract"> Subtract
    <input type="radio" name="operator" value="multiply"> Multiply
    <input type="radio" name="operator" value="divide"> Divide<br><br>
    <input type="submit" value="Calculate">
</form>

<% if (request.getAttribute("result") != null) { %>
<h3>Result: <%= request.getAttribute("result") %></h3>
<% } %>
</body>
</html>
