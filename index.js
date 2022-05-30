/* let searchForm = document.querySelector('.search-form');
let searchBtn =document.getElementById('search-btn');

document.querySelector('#search-btn').onclick = () =>{
    searchForm.classList.toggle('active');
}

*/

let searchForm = document.querySelector('.searchBox');
let searchBtn =document.getElementById('search-bbtn');

if(searchBtn){
  document.querySelector('#search-btn').onclick = () =>{
    searchForm.classList.toggle('active');
}
}



/* user login starts*/

let userLogin = document.querySelector('.user-login');
let userBtn =document.getElementById('user-btn');

if(userBtn){
  document.querySelector('#user-btn').onclick = () =>{
    userLogin.classList.toggle('active');
} 
}
 

/* user login end*/



/* Cart functionality  Started*/

let carts = document.querySelectorAll('.add-cart');






/*********** Payment starts  *************/



