<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CALCULADORA</title>
</head>
<body>
<form action= "/Aula/Calculadora" method="get">
<label>Valor A:</label>
<input type="text" name= "valorA"><br>
<label>Valor B:</label>
<input type="text" name= "valorB"><br> 
<select name= "opcao">
<option value = "+">(+)</option>
<option value = "-">(-)</option>
<option value = "">()</option>
<option value = "/">(/)</option>
</select>
<input type="submit" value= "Calcular">
</form>
</body>
</html>