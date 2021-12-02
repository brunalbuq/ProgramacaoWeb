<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro</title>
	
	//Alterar estilo do menu
	
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
				}
				
	</style>

	<script type="text/javascript" src="./scripts.js" charset="utf-8">|</script> 

</head>
<body style="times-new-romam: 'Roboto', sans-serif; color: #008080; background: #008080; text-align:center; margin-top: 10rem;">
	
	<div id="menu"> 
	<%@include file="header.jsp"%> 
	
	<h1>Cadastrar Disciplinas</h1>

		
	<form action="listaDisciplinas.jsp" method = "post">
		Disciplina: <br/><input type= "text" name= "disciplina"/><br/>
		Nota Final: <br/><input type= "text" onkeyup="verificaNota(this.value)" name = "nota" /><br/>
		<input type= "submit" value= "Cadastrar Disciplina"/>
	</form>

	<br/> <a href="menu.jsp">Voltar</a> 
</body>
</html>
