<%@page import="java.util.List"%>
<%@page import="br.com.disciplinas.model.Disciplina"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Disciplinas</title>
</head>
<body>
<%
//verificacao se o usuario esta logado
String sessao=(String)session.getAttribute("usuario");
if (sessao == null){%>
	<a href="autentica.jsp">FaÃ§a primeiro o login</a>
	
<%}{ %>
<%@ include file="header.jsp" %>
<br><br>
<table border="1">
	<tr>
		<td>Nome</td>
		<td>Nota</td>
		<td>Situcao</td>
	</tr>
	<%
	List<Disciplina> lista = (List<Disciplina>) request.getAttribute("lista");
	for(Disciplina disciplina : lista){
	%>
	<tr>
		<td><%= disciplina.getNome() %></td>
		<td><%= disciplina.getNota() %></td>
		<td><%= disciplina.getSituacao() %></td>
	</tr>
	<%
		}
	%>

</table>
<br>
<a href="menu.jsp" style="text-decoration: none; color: #fff;">Voltar ao menu principal.</a><br><br>
<a href="ServletControlador?resposta=cadastro" style="text-decoration: none; color: #fff;">Cadastrar outra materia.</a>
<%} %>
</body>
</html>
