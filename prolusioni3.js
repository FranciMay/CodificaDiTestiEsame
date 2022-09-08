

//Menu
const x = document.querySelector("#menu");

x.addEventListener("click", () => { 
    const navbar = document.querySelector(".navbar"); 
    navbar.classList.toggle("block"); 
})

//traduzione

const trad = document.querySelector("#trad"); //Avanti
var i = 0;
trad.addEventListener("click", () => {
    if(i==1){
        i=0;
        document.getElementById("traduzione_JS").style.display = "none";
        document.getElementById("trascrizione_JS").style.display = "block";
    }else{
        document.getElementById("trascrizione_JS").style.display = "none";
        document.getElementById("traduzione_JS").style.display = "block";
        i=1;
    }
})
//traduzione 2

const trad2 = document.querySelector("#trad_2"); //Avanti
var i = 0;
trad2.addEventListener("click", () => {
    if(i==1){
        i=0;
        document.getElementById("traduzione_JS_2").style.display = "none";
        document.getElementById("trascrizione_JS_2").style.display = "block";
    }else{
        document.getElementById("trascrizione_JS_2").style.display = "none";
        document.getElementById("traduzione_JS_2").style.display = "block";
        i=1;
    }
})

//Slide
function slideSetting(index){
    //foto[index].classList.add("show");
    testoFoto.innerText = listaFoto[index];
    if(testoFoto.innerText == "Foglio 22" || testoFoto.innerText == "Retro foglio 22"){

    }else{
        
    }

}

let index = 0;
const listaFoto = ["Foglio 21", "Retro foglio 21", "Foglio 22", "Retro foglio 22"];
const foto = document.querySelectorAll(".foto");
const testoFoto = document.querySelector("#testo_foto");
const arrayMap1 = document.getElementById("Full_PAG21_MAP");
const arrayMap2 = document.getElementById("Full_PAG21_BACK_MAP");
const arrayMap3 = document.getElementById("Full_PAG22_MAP");
const arrayMap4 = document.getElementById("Full_PAG22_BACK_MAP");

slideSetting(index);
function Image_load(){
  arrayMap1.classList.add("show");
  arrayMap1.classList.remove("sec_hidden");
};

const avanti = document.querySelector("#avanti"); //Avanti

avanti.addEventListener("click", () => {
    if(index<3) {
        index+=1;
    }
  switch(listaFoto[index]) {
      case "Foglio 21":
        arrayMap1.classList.remove("sec_hidden");
        arrayMap1.classList.add("show");

        arrayMap2.classList.remove("show");
        arrayMap3.classList.remove("show");
        arrayMap4.classList.remove("show");

        arrayMap2.classList.add("sec_hidden");
        arrayMap3.classList.add("sec_hidden");
        arrayMap4.classList.add("sec_hidden");

        document.getElementById("testo_foto").textContent = "Foglio 21";
        document.getElementById("sec_show").style.display = "block";
        document.getElementById("sec_hidden").style.display = "none";
      break;
      case "Retro foglio 21":
        arrayMap2.classList.remove("sec_hidden");
        arrayMap2.classList.add("show");

        arrayMap1.classList.remove("show");
        arrayMap3.classList.remove("show");
        arrayMap4.classList.remove("show");

        arrayMap1.classList.add("sec_hidden");
        arrayMap3.classList.add("sec_hidden");
        arrayMap4.classList.add("sec_hidden");

        document.getElementById("testo_foto").textContent = "Retro Foglio 21";
        document.getElementById("sec_show").style.display = "block";
        document.getElementById("sec_hidden").style.display = "none";
      break;
      case "Foglio 22":
        arrayMap3.classList.remove("sec_hidden");
        arrayMap3.classList.add("show");

        arrayMap2.classList.remove("show");
        arrayMap1.classList.remove("show");
        arrayMap4.classList.remove("show");

        arrayMap2.classList.add("sec_hidden");
        arrayMap1.classList.add("sec_hidden");
        arrayMap4.classList.add("sec_hidden");
        
        document.getElementById("testo_foto").textContent = "Foglio 22";
        document.getElementById("sec_show").style.display = "none";
        document.getElementById("sec_hidden").style.display = "block";
      break;
      case "Retro foglio 22":
        arrayMap4.classList.remove("sec_hidden");
        arrayMap4.classList.add("show");

        arrayMap2.classList.remove("show");
        arrayMap3.classList.remove("show");
        arrayMap1.classList.remove("show");

        arrayMap2.classList.add("sec_hidden");
        arrayMap3.classList.add("sec_hidden");
        arrayMap1.classList.add("sec_hidden");

        document.getElementById("testo_foto").textContent = "Retro Foglio 22";
        document.getElementById("sec_show").style.display = "none";
        document.getElementById("sec_hidden").style.display = "block";
      break;
  }
})

const indietro = document.querySelector("#indietro"); //Indietro

indietro.addEventListener("click", () => {
    if(index!=0) {
        index-=1;
    }
  switch(listaFoto[index]) {
    case "Foglio 21":
        arrayMap1.classList.remove("sec_hidden");
        arrayMap1.classList.add("show");

        arrayMap2.classList.remove("show");
        arrayMap3.classList.remove("show");
        arrayMap4.classList.remove("show");

        arrayMap2.classList.add("sec_hidden");
        arrayMap3.classList.add("sec_hidden");
        arrayMap4.classList.add("sec_hidden");

        document.getElementById("testo_foto").textContent = "Foglio 21";
        document.getElementById("sec_show").style.display = "block";
        document.getElementById("sec_hidden").style.display = "none";
      break;
      case "Retro foglio 21":
        arrayMap2.classList.remove("sec_hidden");
        arrayMap2.classList.add("show");

        arrayMap1.classList.remove("show");
        arrayMap3.classList.remove("show");
        arrayMap4.classList.remove("show");

        arrayMap1.classList.add("sec_hidden");
        arrayMap3.classList.add("sec_hidden");
        arrayMap4.classList.add("sec_hidden");

        document.getElementById("testo_foto").textContent = "Retro Foglio 21";
        document.getElementById("sec_show").style.display = "block";
        document.getElementById("sec_hidden").style.display = "none";
      break;
      case "Foglio 22":
        arrayMap3.classList.remove("sec_hidden");
        arrayMap3.classList.add("show");

        arrayMap2.classList.remove("show");
        arrayMap1.classList.remove("show");
        arrayMap4.classList.remove("show");

        arrayMap2.classList.add("sec_hidden");
        arrayMap1.classList.add("sec_hidden");
        arrayMap4.classList.add("sec_hidden");

        
        document.getElementById("testo_foto").textContent = "Foglio 22";
        document.getElementById("sec_show").style.display = "none";
        document.getElementById("sec_hidden").style.display = "block";
      break;
      case "Retro foglio 22":
        arrayMap4.classList.remove("sec_hidden");
        arrayMap4.classList.add("show");

        arrayMap2.classList.remove("show");
        arrayMap3.classList.remove("show");
        arrayMap1.classList.remove("show");

        arrayMap2.classList.add("sec_hidden");
        arrayMap3.classList.add("sec_hidden");
        arrayMap1.classList.add("sec_hidden");

        document.getElementById("testo_foto").textContent = "Retro Foglio 22";
        document.getElementById("sec_show").style.display = "none";
        document.getElementById("sec_hidden").style.display = "block";
      break;
  }
})

//Bottone cancellature
const cancellature = document.querySelector("#cancella");
const del = document.querySelectorAll(".del");

cancellature.addEventListener("click", () => del.forEach( canc => canc.classList.toggle("line_through")));

// Bottone correzioni
const correzioni = document.querySelector("#correzioni");
const abbr = document.querySelectorAll(".abbr");
const expan = document.querySelectorAll(".expan");

correzioni.addEventListener("click", () => { 
    abbr.forEach(abbreviazione => abbreviazione.classList.toggle("none"));
    expan.forEach(esp => esp.classList.toggle("inline_block")); 
})

// Bottone terminologia
const terminologia = document.querySelector("#terminologia");
const termini = document.querySelectorAll(".terms");

terminologia.addEventListener("click", () => termini.forEach( termine => termine.classList.toggle("yellow")));

// Bottone glottonimi
const glottonimi = document.querySelector("#glottonimi");
const langs = document.querySelectorAll(".lang");

glottonimi.addEventListener("click", () => langs.forEach( gl => gl.classList.toggle("purple")));

// Bottone toponimi
const toponimo = document.querySelector("#toponimi");
const tops = document.querySelectorAll(".top");

toponimo.addEventListener("click", () => tops.forEach( topo => topo.classList.toggle("orange")));

//SLIDE SHOW

let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}