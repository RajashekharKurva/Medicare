<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MediCare</title>
    <link rel="stylesheet" href="CSS/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 </head>
<body>

    <!-- Navigation Starting .. -->
    <header class ="header">
     
        <a href="#"><img src="CSS/images/logo1.jpg" alt="logo" class="logo" ></a>

        <div>
            <ul id="navbar">
                <li><a href="index.jsp" class="active" >Home</a></li>
                <li><a href="medicine.html"target="_blank" >Order Medicines</a></li>
                <li><a href="healthProducts.html"target="_blank" >Health Products</a></li>
                <li><a href="about.html"  target="_blank" >aboutUs</a></li>
                <li><a href="contact.html" target="_blank" >ContactUs</a></li>
                <li><a href="orders.jsp" target="_blank" >Order History</a></li>
                <li><a href="adminlogin.html" target="_blank" >Admin Login</a></li>

            </ul>
        </div>

        <div class="icons">
            <div class="fa fa-bars" id="menu-btn"></div>
            <div class="fa fa-search" id="search-btn"></div>
            <div class="cart">
            	<form action = "/cart">
            		<button type ="submit" class="cart-button"> <p class="fa fa-shopping-cart" id="cart-btn" > <sup></sup></p> </button>
            	</form>
            </div>
            <div class="fa fa-user" id="user-btn"></div>    

        </div>


        <div class="user-login">
            <form action="" class="login-form" onsubmit="loginValidate();">
                <h3>User Login</h3>
                <input type="email" name="email" id="email" placeholder="abc@gmail.com" required> <br>
                <input type="password" name="password" id="password" placeholder="*******" required> <br>
                <button type="submit" class="signin-btn">SignIn</button>
                <p class="signup-info"><i>Don't have account click on  Signup</i></p>
                <a href="registration.jsp" class="signup-btn">SignUp</a>
            
            </form>
        </div>

    </header>
    <!-- Navigation Completed-->

<div class="title">

    <div class="description">
        <h4>Order Medicine and <b style="color:orangered">Save</b> Your Life</h4>
        <p>Live long life !! with buying original products and Quickly Delivered</p>
    </div>

</div>

<!-- Search box -->
<div class="searchBox">
    <input type="search" name="search" id="searchbox" placeholder="Search products here ......" >
    <label for="search-box" class="fa fa-search" id="search-bbtn"></label>


</div>


<!-- Products -->
<h4 class="prdcts"> Our <b>Products</b></h4>

<div class="products ">

   
    <div class=" box"><img src="CSS/images/azithromycin.jpg" alt="">
        <form action="addToCart">
                     <h3>Azithromycin </h3>
                     <input type="hidden" name="productName" value="azithromycin">
         <b >
             Quantity :
             <select name="quantity">
                 <option value="1">01</option>
                 <option value="2">02</option>
                 <option value="3">03</option>
                 <option value="4">04</option>
                 <option value="5">05</option>
             </select>
         </b>
         <br> 

         <div class="stars">
             <i class="fa fa-star"></i>
             <i class="fa fa-star"></i>
             <i class="fa fa-star"></i>
             <i class="fa fa-star"></i>
             <i class="fa fa-star-half-empty"></i>
         </div>
         <div class="price">Rs.25.00/-</div>
         <input type="hidden" name="price" value="25">
         <button type = "submit" class=" add-cart btn ">add to cart</button>
        </form>               
     </div>

     
     <div class=" box"><img src="CSS/images/Diabcon.jpg" alt="">
        <form action="addToCart">
            <h3>Diabcon</h3>
            <input type="hidden" name="productName" value="Diabcon">
            <b >
                Quantity  :
                <select name="quantity">
                    <option value="1">01</option>
                    <option value="2">02</option>
                    <option value="3">03</option>
                    <option value="4">04</option>
                    <option value="5">05</option>
                </select>
            </b>
            <br> 
   
            <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-empty"></i>
            </div>
            <div class="price">Rs.60.00/-</div>
            <input type="hidden" name="price" value="60">
            <button type = "submit" class=" add-cart btn ">add to cart</button>
        </form>               
     </div>

     <div class=" box"><img src="CSS/images/Dolo650mg.jpg" alt="">
            <form action="addToCart">
                <h3>Dolo650mg</h3>
                <input type="hidden" name="productName" value="Dolo650mg">
                <b>
                    Quantity :
                    <select name="quantity">
                        <option value="1">01</option>
                        <option value="2">02</option>
                        <option value="3">03</option>
                        <option value="4">04</option>
                        <option value="5">05</option>
                    </select>
                </b>
                <br> 
       
                <div class="stars">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-empty"></i>
                </div>
                <div class="price">Rs.20.00/-</div>
                <input type="hidden" name="price" value="20">
                <button type = "submit" class=" add-cart btn ">add to cart</button>
            </form>
     </div>
     <div class=" box"><img src="CSS/images/FOlon200.jpg" alt="">
            <form action="addToCart">
                <h3>Folon 200mg</h3>
                <input type="hidden" name="productName" value="FOlon200">
                <b>
                    Quantity :
                    <select name="quantity">
                        <option value="1">01</option>
                        <option value="2">02</option>
                        <option value="3">03</option>
                        <option value="4">04</option>
                        <option value="5">05</option>
                    </select>
                </b>
                <br> 
       
                <div class="stars">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-empty"></i>
                </div>
                <div class="price">Rs.22.00/-</div>
                <input type="hidden" name="price" value="22">
                <button type = "submit" class=" add-cart btn ">add to cart</button>
            </form>
     </div>
 
</div>

<div class="products ">
   
    <div class=" box"><img src="CSS/images/Bournvita.jpg" alt="">
        <form action="addToCart">
            <h3>Bournvita </h3>
            <input type="hidden" name="productName" value="Bournvita">
            <b >
                Quantity :
                <select name="quantity">
                    <option value="1">01</option>
                    <option value="2">02</option>
                    <option value="3">03</option>
                    <option value="4">04</option>
                    <option value="5">05</option>
                </select>
            </b>
            <br> 
   
            <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-empty"></i>
            </div>
            <div class="price">Rs.100.00/-</div>
            <input type="hidden" name="price" value="100">
            <button type = "submit" class=" add-cart btn ">add to cart</button>
        </form>                 
     </div>

     
     <div class=" box"><img src="CSS/images/Ensure.jpg" alt="">
        <form action="addToCart">
            
         <h3>Ensure</h3>
         <input type="hidden" name="productName" value="Ensure">
         <b >
             Quantity  :
             <select name="quantity">
                 <option value="1">01</option>
                 <option value="2">02</option>
                 <option value="3">03</option>
                 <option value="4">04</option>
                 <option value="5">05</option>
             </select>
         </b>
         <br> 

         <div class="stars">
             <i class="fa fa-star"></i>
             <i class="fa fa-star"></i>
             <i class="fa fa-star"></i>
             <i class="fa fa-star"></i>
             <i class="fa fa-star-half-empty"></i>
         </div>
         <div class="price">Rs.150.00/-</div>
         <input type="hidden" name="price" value="150">
         <button type = "submit" class=" add-cart btn ">add to cart</button>
        </form>                 
     </div>

     <div class=" box"><img src="CSS/images/Honey.jpg" alt="">
            <form action="addToCart">
                <h3>Honey</h3>
                <input type="hidden" name="productName" value="Honey">
                <b>
                    Quantity :
                    <select name="quantity">
                        <option value="1">01</option>
                        <option value="2">02</option>
                        <option value="3">03</option>
                        <option value="4">04</option>
                        <option value="5">05</option>
                    </select>
                </b>
                <br> 
       
                <div class="stars">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-empty"></i>
                </div>
                <div class="price">Rs.150.00/-</div>
                <input type="hidden" name="price" value="150">
                <button type = "submit" class=" add-cart btn ">add to cart</button>
            </form>
     </div>
     <div class=" box"><img src="CSS/images/Pediacure.jpg" alt="">
            <form action="addToCart">
                <h3>PediCure</h3>
                <input type="hidden" name="productName" value="Pediacure">
                <b>
                    Quantity :
                    <select name="quantity">
                        <option value="1">01</option>
                        <option value="2">02</option>
                        <option value="3">03</option>
                        <option value="4">04</option>
                        <option value="5">05</option>
                    </select>
                </b>
                <br> 
       
                <div class="stars">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-empty"></i>
                </div>
                <div class="price">Rs.80.00/-</div>
                <input type="hidden" name="price" value="80">
                <button type = "submit" class=" add-cart btn ">add to cart</button>
            </form>
     </div>
 
</div>




    <footer></footer>
  <script src="index.js"></script>
</body>
</html>











