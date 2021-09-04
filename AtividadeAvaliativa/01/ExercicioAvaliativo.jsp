<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario</title>
</head>
<body>
<h1>Contato</h1>
<form action="/Aula/ServletNomeCompleto" method="get">
    Seu nome:<br>
    <input type="text" name="nome" /> <br>

    Seu sobrenome:<br>
    <input type="text" name="sobrenome" /><br>
    <input type="submit" value="Enviar" />
</form>
</body>
</html>