<%@page import="Aula30_09.Contador"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apresenta a quantidade de acessos a esta página.</title>
</head>
<body>
<%Aula30_09.Contador.novoAcesso(); %>

Quantidade de acessos a esta página:
<b><%=Aula30_09.Contador.getQuantidadeAcessos() %></b>

<br>O primeiro acesso foi feito dia:
<b><%=Aula30_09.Contador.getDataInicial() %></b>

<br>Primeiro acesso foi feito dia:
<b><%= Aula30_09.Contador.getDateTime() %></b>

</body>
</html>
