console.log('🚀');

axios.get
("https://fizal.me/products.json")
  .then(function (response) {
console.log(response.data.products.length);
  let title = document.getElementsByTagName('h1')[0];
  let image = document.getElementsByTagName('img')[0];
  let body = document.getElementsByTagName('p')[0];
  let price = document.getElementsByTagName('pre')[0];
  let product1 = response.data.products;

  title.innerHTML = product1[0].title;
  image.src = product1[0].images[0].src;
  body.innerHTML = product1[0].body_html;
  price.innerHTML = product1[0].variants[0].price;

  document.getElementById("demo").addEventListener("click", function(){
      let i = response.data.products.length;
    function getRandomInt() {
      return Math.floor(Math.random() * i);
    }
      title.innerHTML = product1[getRandomInt()].title;
      image.src = product1[getRandomInt()].images[0].src;
      body.innerHTML = product1[getRandomInt()].body_html;
      price.innerHTML = product1[getRandomInt()].variants[0].price;
  });
  console.log(response.data.products[0].title);

})
  .catch(function(error){
    console.log(error);
})
