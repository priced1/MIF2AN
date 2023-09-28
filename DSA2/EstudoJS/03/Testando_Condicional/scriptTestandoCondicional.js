function login(){
    //obtem o nome digitado pelo prompt
    var nome = prompt("Autenticação");

    //realiza o teste logico se o nome esta sem dados
    //ou se o tamanho do nome é menor ou igual a 0
    //a propriedade lenght obtem a quantidade de caracteres
    if(nome == "" || nome.length <= 0){
        alert("Informe algo, não deixe em branco ");
    }else{
        alert("Bem vindo "+ nome);
        document.write("<h1> Login: " + nome + " <br /> Foi Aceito!!! </h1>");
    }
}