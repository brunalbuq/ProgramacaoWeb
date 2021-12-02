function verificaNota(value) {
    if (value.trim() !== "") { //Verifica se o campo está vazio
        var regra = /^[0-9]+$/; //Só aceita se for numeros
        if (value.match(regra)) { //Verifica se a regra está certa
        } else {
            alert("Somente numeros"); //Mostra um alerta caso o usuário coloque alguma letra 
        }
    }
}

function verificaLogin(value) {
    if (value.trim() !== "") {
        var regra = /^[a-zA-Z]+$/; //só aceita letras
        if (value.match(regra)) { //verifica se a regra está certa 
            //Validação para verificar se o usuário atende à regra do não uso de letras.
        } else {
            alert("Somente letras");// mostra um alerta caso o usuario tenha colocado numeros
        }
    }
}
