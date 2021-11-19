<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CPF</title>
</head>
<body>
	<script type="text/javascript">
    function ValidaCPF(){
        var RegraValida=document.getElementById("RegraValida").value; 
        var cpfValido = /^(([0-9]{3}.[0-9]{3}.[0-9]{3}-[0-9]{2})|([0-9]{11}))$/;
        if (cpfValido.test(RegraValida) == true)    { 
        console.log("CPF Válido");
        var result = getElementById("resultado")
        } else    {
        console.log("CPF Inválido");
        }
        }
    function fMasc(objeto,mascara) {
    obj=objeto
    masc=mascara
    setTimeout("fMascEx()",1)
    }

    function fMascEx() {
    obj.value=masc(obj.value)
    }

    function mCPF(cpf){
    cpf=cpf.replace(/\D/g,"")
    cpf=cpf.replace(/(\d{3})(\d)/,"$1.$2")
    cpf=cpf.replace(/(\d{3})(\d)/,"$1.$2")
    cpf=cpf.replace(/(\d{3})(\d{1,2})$/,"$1-$2")
    return cpf
    }


    </script>

    Nome: <input type="text" id="Nome" value="" name="NomeCompleto" onkeydown="javascript: fMasc( this, mMasc );">
    <br>
    CPF: <input type="text" id="RegraValida" value="" name="RegraValida" onkeydown="javascript: fMasc( this, mCPF );"><br>
    <input type="submit" value="Inserir Registro" onclick="ValidaCPF();">
</body>
</html>
