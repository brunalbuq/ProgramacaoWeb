<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<script type="text/javascript" src="script.js"></script>
			<title>Login</title>
			<link rel="preconnect" href="https://fonts.googleapis.com">
			
			<style type="text/css">
				
				#fundo{
					background-image: url("https://p4.wallpaperbetter.com/wallpaper/696/274/479/gradient-blue-4k-8k-wallpaper-preview.jpg");
					background-size: cover;
				}
				
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
				
				#cabecalho {
					font-color: black;
					font-family:'Arial', sans-serif;
					text-align: center;
					margin: 10px;

				}
				
				#formulario {
					text-align: center;
				}
			</style>
			
		</head>
		<body id="fundo">
			
			<div id="menu">
			<h1 id="cabecalho">Preencha os campos abaixo<br></h1>
			<form action="ServletAutentica" method="post" id="formulario">
				<label>Usuario<br></label>
				<input type="text" onkeyup="verificaLetra(this.value)" name="usuario">
				<br>
				<br>
				<label>Senha<br></label>
				<input type="password" name="senha">
				<br><br>
		
				<input type="submit" value="Enviar"><br><br>
			</form>
			</div>
		</body>
</html>
