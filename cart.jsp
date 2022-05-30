<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.rajTechProgramming.Medicare.*" %>
<%@page import="com.rajTechProgramming.Medicare.Entity.Product" %>
<%@page import="java.util.*" %>
    
    
<!DOCTYPE html>
<html  >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medicare</title>
    <link rel="stylesheet" href="CSS/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<%
int cartCount = (int)request.getAttribute("cartCount") ;
%>

    <!-- Navigation Starting .. -->
    <header class ="header">
     
        <a href="#"><img src="CSS/images/logo1.jpg" alt="logo" class="logo" ></a>

        <div>
            <ul id="navbar">
                <li><a href="index.jsp" >Home</a></li>
                <li><a href="medicine.html"target="_blank" >Order Medicines</a></li>
                <li><a href="healthProducts.html"target="_blank" >Health Products</a></li>
                <li><a href="about.html"  target="_blank" >aboutUs</a></li>
                <li><a href="contact.html" target="_blank" >ContactUs</a></li>
                <li><a href="orders.jsp" target="_blank" >Order History</a></li>

            </ul>
        </div>

        <div class="icons">
            <div class="fa fa-bars" id="menu-btn"></div>
            <div class="fa fa-search" id="search-btn"></div>
            <div class="cart cart-active">
            	<form action = "/cart">
            		<button type ="submit" class="cart-button"> <p class="fa fa-shopping-cart" id="cart-btn" > <sup style=" color:oranged;" ><%=cartCount %></sup></p> </button>
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

	<h4 class="prdcts">
		Cart <b>Products</b>
	</h4>

<% 
List<Product> products = (List<Product> )request.getAttribute("cartProducts");
%>


	<div class="cart-products">
<%
//if(products != 0) {
for(Product product:products)
{
%>
		<div >
			<div class="cart-box">
				<img src="CSS/images/<%= product.getProductName()%>.jpg" alt="img"
					class="cart-img">

				<h3><%= product.getProductName()%></h3>
				<b> Quantity :<%= product.getQuantity()%> </b> <br>

				<div class="stars">
					<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star"></i> <i class="fa fa-star"></i> <i
						class="fa fa-star-half-empty"></i>
				</div>
				<div class="price">Rs.<%= product.getPrice()%>/-</div>
				<div>
					<form action="deleteItem">
						<div class="item-delete">
						<input type="hidden" name="productId" value="<%= product.getProductID() %>" ></br>
						<button type = "submit"><i class="fa fa-close "></i></button>
						 </div>
					</form>
				</div>
			</div>


		</div>
		
<%}

//}%>		

	</div>

<%
double totalAmount = (double) request.getAttribute("totalPrice");
%>

	</br>
	<div class="payment">
		<form action="payment">

			<h4>
				Total Amount:<b class="totalprice">Rs.<%=totalAmount %> </b>
			</h4></br></br>
			<button type="submit" class="btn ">Pay & ProceedToBuy</button>
		</form>
	</div>




	<footer></footer>
    <script src="index.js"></script>
</body>
</html>