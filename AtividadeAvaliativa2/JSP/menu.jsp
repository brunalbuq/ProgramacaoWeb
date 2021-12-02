<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
</head>

	<style type="text/css">
	#menu {
					background: white;
					width: 500px;
					position: absolute;
  					top: 25%; /* posiciona na metade da tela */
  					margin-top: 5px; /* e retrocede metade da altura */
  					left: 35%; /* posiciona na metade da tela */
  					margin-left: -100px;
  					size: 500px;
  					heidth: 400px;
  					border-style: double;
  					border-width: 5px;
  					border-color: grey;
  					border: 1px solid #CCCCCE;
                    border-radius: 3px;
                    box-shadow: 0 3px 0 rgba(0, 0, 0, .3),
                                   0 2px 7px rgba(0, 0, 0, 0.2);
				}
				
	</style>

<body style="times-new-romam: 'Roboto', sans-serif; color: #008080; background: #008080; text-align:center; margin-top: 10rem;">
	
	<%@include file="header.jsp"%>
	<div id="menu">
	<h1>Menu</h1>
	
Escolha o que deseja fazer: <br/></br>
	<form action="CadastroDisciplinas.jsp" method = "post">
		<input type= "submit" value= "CADASTRAR DISCIPLINA"/> 
	</form>
		
	<form action="listaDisciplinas.jsp" method = "post">
		<input type= "submit" value= "CONSULTAR DISCIPLINAS E NOTAS"/>
	</form>
	
	<br/> <a href="autentica.jsp">Deslogar</a>
	
</body>
</html>
