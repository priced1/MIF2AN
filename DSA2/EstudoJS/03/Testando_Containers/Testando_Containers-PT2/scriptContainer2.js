function login(){
    var teste = document.getElementById("res");
    var nome = prompt("Identificação", "Informe o Login!");

    if(nome == "" || nome == "Informe o Login!" || nome.length<=4){
        alert("SAO AS REGRAS:\nInforme um nome!!!\nEste nome deve ter pelo menos 5 letras!!!");
        teste.focus();
    }else{
        document.getElementById("res").innerHTML = 
        "<h2>Bem vindo, " + nome.toUpperCase() + "!!!</h2>";
    }
}