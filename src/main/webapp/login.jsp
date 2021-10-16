<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta charset="ISO-8859-1">

    <title>Login</title>
    <link rel="icon" type="image/x-icon" href="./img/ico/Qmobile.ico" />
    <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
    <!-- font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <!-- css+bootstrap -->
    <link href="./css/styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</head>

<body id="page-top">
    <!-- Modal -->
    <%@ page import = "controller.*" %>
    <% String error = (String) session.getAttribute("error");
    	if(error==null){
    		error="";
    	}
    	
    	String user="";
    	String pass="";
    	
    	Cookie[] cookies = request.getCookies();
    	for(Cookie retrievedCookie:cookies){
    		if(retrievedCookie.getName().equals("cookie_uid")){
    		user = retrievedCookie.getValue();    			
    		}
    		if(retrievedCookie.getName().equals("cookie_pwd")){
    		pass = retrievedCookie.getValue();    			
    		}
    	}
    %>
    
    <div class="modal-dialog shadow-lg">
        <div class="modal-content">
            <div class="modal-header">
                <img style="width: 8rem;" src="./img/logos/logo.png" alt="logo">
            </div>
            <div class="modal-body">
                <form action="/PRJ321x_Project_3_FX10152/login" method="post" name="loginForm" onsubmit="return validForm()">
                    <div class="md-form mb-4">
                        <i class="fas fa-user"></i>
                        <input type="text" name="username" placeholder="Enter username" class="form-control" value="<%=user%>">
                    </div>
                    <div class="md-form mb-2">
                        <i class="fas fa-lock"></i>
                        <input type="password" name="password" placeholder="Enter password" class="form-control" value="<%=pass%>">
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" name = "remember" value = "yes" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">Remember me</label>
                    </div>
                        <p class="text-danger text-center text-uppercase"><%= error %></p>
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn btn-outline-secondary">Login</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer d-flex justify-content-center">
                <p>Not a member yet? <span><a class = "text-decoration-none" href="#">Sign Up</a></span>.</p>
            </div>
        </div>
    </div>
    <!--JS-->
    <script src="./script/scripts.js"></script>
</body>

</html>