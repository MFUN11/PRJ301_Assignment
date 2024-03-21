<%-- 
    Document   : login.jsp
    Created on : Feb 22, 2024, 1:19:24 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vn">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/css1/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/css1/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/css1/style.css">

    <title>Login</title>
  </head>
  <body>
  
        <%@include  file="nav.jsp"%>	
  <div class="content">
    <div class="container">
      <div class="row justify-content-center">
        <!-- <div class="col-md-6 order-md-2">
          <img src="images/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
        </div> -->
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-12">
              <div class="form-block">
                  <div class="mb-4">
                  <h3>Sign In to <strong>MiniShop</strong></h3>
                  <p class="mb-4">Hello</p>
                </div>
                <form action="login" method="post">
                  <div class="form-group first">
                    <label for="username" placeholeder="Email">Email</label>
                    <input type="text" class="form-control" id="username" name="user">

                  </div>
                  <div class="form-group last mb-4">
                    <label placeholeder="Password" for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="pass">
                    
                  </div>
                    <a style="color:red"> ${requestScope.error}</a>
              
                  <input type="submit" value="Log In" class="btn btn-pill text-white btn-block btn-primary">

                  <span class="d-block text-center my-4 text-muted"> or sign in with</span>
                  
                  <div class="social-login text-center">
                    <a href="register.jsp" class="google">
                      <span class="icon-google mr-3"></span> 
                    </a>
                  </div>
                </form>
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div>

  
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>