//uso do getElementByID
function textoId(){
    document.getElementById("spanTextoId").innerHTML= "==> Foi acionado o seletor por getElementByID";
}

//uso do querySelector
function textoSeletor(){
    var porId = document.querySelector("#spanTextoIdSeletor");
    porId.innerHTML = "==> Foi acionado por querySelector pelo seu Id com uso do #";
}
function textoClass(){
    var porClass = document.querySelector(".spanTextoClass");
    porClass.innerHTML = "==> Foi acionado por querySelector pela sua Classe com uso do .(ponto)";
}
function textoTag(){
    var porTag = document.querySelectorAll("span")[3];
    porTag.innerHTML = "==> Foi acionado por querySelectorAll para todas as tags de nome span, porém índice= 3";
}