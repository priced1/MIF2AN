var titulo = document.querySelector(".titulo");
//add um "escutador" de eventos

//chamando função
titulo.addEventListener("click", msg);

function msg(){
    alert("Opa Click OK");
}

//incluir evento ao botao
var botao = document.querySelector("#btnClick");

//recarregar e enviar o form
botao.addEventListener("click", function(esteEvento){
    esteEvento.preventDefault();//desativar o evento padrao

    alert("Click Ok");
    botao.style.color="white";
    botao.style.backgroundColor="gray";
    botao.textContent= "Botão foi Clicado";
    valorQualquer.value="";
    botao.disabled=true;
    valorQualquer.disabled=true;
});