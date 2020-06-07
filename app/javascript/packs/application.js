import "bootstrap";

new Glide('.glide', {
  type: 'carousel',
  perView: 3,
  breakpoints: {
    800: {
      perView: 1
    }
  }

}).mount()





import Glide from '@glidejs/glide'

// new Glide('.glide',{
//   type: 'carousel',
//   startAt: 0,
//   perView: 4
// }).mount()
