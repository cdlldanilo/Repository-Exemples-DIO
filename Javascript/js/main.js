//alert("Meu primeiro js");


//----------------------------------- iniciando variavel

//var nome = "Danilo";
//alert("Bem vindo: " + nome);

/*var nome = "Danilo";
var idade = 39;
alert(nome + " tem " + idade + " anos de idades"); */


//----------------------------------- Trabalhar com strings

/*var nome = "Danilo";
var idade = 39;
var idade2 = 10;
var frase = "O Japão é o melhor time do mundo";
alert(idade + idade2);
console.log(nome);
console.log(frase);
console.log(idade + idade2);
console.log(frase.replace("Japão", "Brasil"));
//alert(frase.replace("Japão", "Brasil")); */


//----------------------------------- Trabalhar com strings maiuscula

/*var nome = "Danilo";
var idade = 39;
var idade2 = 10;
var frase = "O Japão é o melhor time do mundo";
alert(idade + idade2);
console.log(nome);
console.log(frase);
console.log(idade + idade2);
console.log(frase.toUpperCase()); */


//----------------------------------- Trabalhar com strings minuscula

/*var nome = "Danilo";
var idade = 39;
var idade2 = 10;
var frase = "O Japão é o melhor time do mundo";
alert(idade + idade2);
console.log(nome);
console.log(frase);
console.log(idade + idade2);
console.log(frase.toLowerCase()); */


//----------------------------------- Trabalhar com calculos

/*var nome = "Danilo";
var n1 = 5;
var n2 = 3;
var frase = "O Japão é o melhor time do mundo";
console.log(nome);
console.log(n1 * n2);
console.log(frase.toLowerCase()); */


//----------------------------------- Trabalhar com array

/*var lista = ["maçã", "pera", "laranja"]; 

//console.log(lista);
console.log(lista[1]);
//alert(lista[1]); */


//----------------------------------- Colocar um item à mais no array

/*var lista = ["maçã", "pera", "laranja"]; 
lista.push("uva");

console.log(lista); */


//----------------------------------- Tira o ultimo elemento do array

/*var lista = ["maçã", "pera", "laranja"]; 
lista.pop();

console.log(lista); */


//----------------------------------- Ver o tamanho do array

/*var lista = ["maçã", "pera", "laranja"]; 
console.log(lista.length); */


//----------------------------------- Ver o tamanho do array com o push

/*var lista = ["maçã", "pera", "laranja"];
lista.push("uva"); 
console.log(lista.length); */


//----------------------------------- Mostrar os elementos ao contrario do array

/*var lista = ["maçã", "pera", "laranja"]; 
lista.push("uva");

console.log(lista.reverse()); */ 


//----------------------------------- Mostrar os elementos do array como Strings

/*var lista = ["maçã", "pera", "laranja"]; 
lista.push("uva");

//console.log(lista);
//console.log(lista.toString());

console.log(lista[0]);
console.log(lista.toString()[0]); */


//----------------------------------- Mostrar os elementos do array como Strings e separado de traço

/*var lista = ["maçã", "pera", "laranja"];
lista.push("uva");
console.log(lista);
console.log(lista.toString());
console.log(lista.join(" - ")); */


//----------------------------------- Um dicionario.

/*var fruta = { nome: "maçã", cor: "vermelha" }
console.log(fruta.nome);
alert(fruta.cor); */


//-------------- Le duas frutas, usando o "dicionario" e guarda as frutas no array. Mostre uma posição do array.

/*var frutas = [{ name: "maçã", cor: "vermelha"}, { name: "uva", cor: "roxa"}];
console.log(frutas);
alert(frutas[1].name); */


//----------------------------------- Trabalhando com condicionais.

/*var idade = 18

if(idade >= 18) {
    alert("Maior de idade");
} else {
    alert("Memor de idade");
}; */


//----------------------------------- Trabalhando com condicionais e adicionando valor de entrada.

/*var idade = prompt("Qual sua idade?");
if(idade >= 18) {
    alert("Maior de idade.");
} else {
    alert("Menor de idade.");
}; */


//----------------------------------- Trabalhando com laços de repetição.

/*var count = 0;
while(count <= 5) {
    console.log(count);
    count = count + 1;
};
*/

/*var count = 0;
while(count <= 5) {
    console.log(count);
    alert(count);
    count ++;
}; */

/*var count;
for (count = 0; count <= 5; count++) {
    alert(count);
}; */


//----------------------------------- Trabalhando com datas.

/*var d = new Date();
alert(d); */

/*var d = new Date();
alert(d.getMonth()+1); */

/*var d = new Date();
alert(d.getMinutes()); */

/*var d = new Date();
alert(d.getDay);
alert(d.getHours());
alert(d.getMinutes()); */


//----------------------------------- Trabalhando com função.

/*function soma( n1, n2) {
    return n1 + n2;
}

alert(soma(5, 10)); */

//----------------- Trabalhando com função e variavel global.

/*var validar = 0;

function validaIdade(idade) {
    if(idade >= 18) {
        validar = true;
    } else {
        validar = false;
    }

    return validar;
}

var idade = prompt("Qual sua idade?");
validaIdade(idade)
console.log(validar); */

/*function clicou() {
    alert("Obrigado por clicar!");
} */

function clicou() {
    document.getElementById("agradecimento").innerHTML = "<b>Obrigado por clicar!</b>";
    console.log(document.getElementById("agradecimento"));
}  

function redirecionar() {
    window.open("http://ww1.globallabs.academy/");
    window.location.href = "http://ww1.globallabs.academy/";
}

function trocar(elemento) {
    elemento.innerHTML = "Obrigado por passar o mouse";
    //document.getElementById("mousemove").innerHTML = "Obrigado por passar o mouse";
    //alert("Trocar texto");
}

function voltar(elemento) {
    elemento.innerHTML = "Passe o mouse aqui";
    //document.getElementById("mousemove").innerHTML = "Passe o mouse aqui";
}


function load() {
    alert("Pagina carregada");
}


function funcaoChange(elemento) {
    console.log(elemento.value);
}