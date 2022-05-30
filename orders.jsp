<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.rajTechProgramming.Medicare.*" %>
<%@page import="com.rajTechProgramming.Medicare.Entity.Orders" %>
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
                <li><a href="orders.jsp" target="_blank" class="active">Order History</a></li>

            </ul>
        </div>

        <div class="icons">
            <div class="fa fa-bars" id="menu-btn"></div>
            <div class="fa fa-search" id="search-btn"></div>
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
		 <b>Order History</b>
	</h4>

	<div class = "orderHistories">
		<%
		List<Orders> orders = (List<Orders>) request.getAttribute("orderHistory");
		for (Orders order : orders) {
			if (order.getTotalPrice() != 0) {
		%>
		<div class="payment orderHistory">
			OrderId :
			<%=order.getOrderId()%>
			</br> Total Amount:<b class="totalprice">Rs.<%=order.getTotalPrice()%>
			</b>

		</div>

		<%
		}
		}
		%>

	</div>

	<footer></footer>
    <script src="index.js"></script>
</body>
</html>