import "bootstrap";


new Glide('.glide', {
  type: 'carousel',
  perView: 4,
  // autoplay: 3000,
  // hoverpause: false,
  // breakpoints: {
  //   1500: {
  //     perView: 3
  //   }
  // }

}).mount()





import Glide from '@glidejs/glide'

// new Glide('.glide',{
//   type: 'carousel',
//   startAt: 0,
//   perView: 4
// }).mount()


//test:
const test = document.getElementsByClassName('boutonjs');    // On récupère l'élément sur lequel on veut détecter le clic
test.addEventListener('click', function() {     // On écoute l'événement click, notre callback prend un paramètre que nous avons appelé event ici
    test.innerHTML = "C'est cliqué !";                         // On utilise la fonction preventDefault de notre objet event pour empêcher le comportement par défaut de cet élément lors du clic de la souris
});
