<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medicare-registration</title>
    <link rel="stylesheet" href="CSS/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

    <header class ="header"> 

        <div>
            <ul id="navbar">
                <li><a href="index.jsp" >Home</a></li>
                <li><a href="about.jsp"  target="_blank" >aboutUs</a></li>
                <li><a href="contact.jsp" target="_blank" >ContactUs</a></li>

            </ul>
        </div>

        <div class="icons">
            <div class="fa fa-bars" id="menu-btn"></div>
            <div class="fa fa-search" id="search-btn"></div>
            <div class="cart">
            	<form action = "/cart">
            		<button type ="submit" class="cart-button"><a href="cart.jsp" class="fa fa-shopping-cart" id="cart-btn" ><sup></sup> </a></button>
            	</form>
            </div>
            <div class="fa fa-user" id="user-btn"></div>    

        </div>


        <div class="user-login">
            <form action="" class="login-form">
                <h3>Login</h3>
                <input type="email" name="email" id="email" placeholder="abc@gmail.com"> <br>
                <input type="password" name="password" id="password" placeholder="*******"><br>
                <button type="submit" class="signin-btn">SignIn</button>
                <p class="signup-info"><i>Don't have account click on  Signup</i></p>
                <a href="registration.html" class="signup-btn">SignUp</a>
            
            </form>
        </div>

    </header>
   
    <form action="registration" class="registration-form">
        <div class="container">
          <h2 align="center">Register</h2><br>
          <p>Please fill in this form to create an account.</p>
          <hr>
          <label for="fullName"><b>Full Name</b></label>
          <input type="text" placeholder="fullName" name="fullName" id="reg-email" required>
      
          <label for="email"><b>Email</b></label>
          <input type="text" placeholder="Enter Email" name="email" id="reg-email" required>
      
          <label for="password"><b>Password</b></label>
          <input type="password" placeholder="Enter Password" name="password" id="psw" required>
      
          <label for="confirmPassword"><b>Repeat Password</b></label>
          <input type="password" placeholder="Repeat Password" name="confirmPassword" id="psw-repeat" required>

          <label for="phoneNumber"><b>Phone Number</b></label>
          <input type="text" placeholder="655611616" name="phoneNumber" id="phoneNumber" required>
          <hr>
          <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
      
          <button type="submit" class="registerbtn">Register</button>
        </div>
        
        <div class="container signin">
          <p>Already have an account? <a href="#">Sign in</a>.</p>
        </div>
      </form>

    <footer></footer>
    <script src="kitchen.js"></script>
</body>
</html>