<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dados Pessoais</title>
</head>
<body>
	Preencha seus dados pessoais:
	<form action = "ServletTela1Cadastro">
	Nome: <input type ="text" name="nome">
	Sobrenome:<input type ="text" name="sobrenome"><br>
	Endereço Residencial:<br> <!-- br serve para quebrar linha -->
	Rua: <input type ="text" name="rua">
	Complemento: <input type ="text" name="complemento">
	Cidade: <input type ="text" name="cidade">
	CEP: <input type ="text" name="cep">
	Estado: <input type = "text" name="estado">
	<input type ="submit" value="Próxima tela">
	</form>
</body>
</html>
