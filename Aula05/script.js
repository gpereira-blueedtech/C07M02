const btnTexto = document.querySelector("#btn-texto"); 
const titulo = document.querySelector("#titulo");
// const imagem1 = document.querySelector("#img1"); 
// const imagem2 = document.querySelector("#img2"); 

window.onload = function() {
    // alert("Olá mundo do JavaScript para Web");
};

btnTexto.addEventListener("click", function () {
    // alert("Ebaaaaaaaaaa!!!");
        titulo.style.color = "green";
        titulo.innerText = "Novo texto!!!";
        // imagem1.src = "novaimagem.jpg";
        // imagem2.src = "novaimagem2.jpg";
});
