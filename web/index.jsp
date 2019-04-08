<%-- 
    Document   : index
    Created on : 08/04/2019, 10:39:34 AM
    Author     : Photato
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="header.html" %>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">Online Movie Store (OMS)</h1>
            <h3 class="text-center">Your One Stop Spot To Shop Top Movies!</h3>
            <hr />
            <div class="row" id="links">
                <div class="col-sm-4" id="btn1">
                    <a href="/movie/list.jsp" class="btn btn-lg btn-block btn-primary">Browse Movies</a>
                </div>
                <div class="col-sm-4" id="btn2"></div>
                <div class="col-sm-4" id="btn3"></div>
            </div>
	</div>
        
        <script type="text/babel">
            var loggedIn = IsLoggedIn();
            var btn2, btn3;
            if(loggedIn){
                    btn2 = <a href="/order/list.jsp" class="btn btn-lg btn-block btn-primary">My Orders</a>
                    btn3 = <button class="btn btn-lg btn-block btn-default" onclick="logout()" id="logoutBtn">Logout</button>;
            }else{
                    btn2 = <a href="/register.jsp" class="btn btn-lg btn-block btn-primary">Register</a>;
                    btn3 = <a href="/login.jsp" class="btn btn-lg btn-block btn-primary">Login</a>;
            }
            ReactDOM.render(btn2,document.getElementById('btn2'));
            ReactDOM.render(btn3,document.getElementById('btn3'));
            
            var myEl = document.getElementById('logoutBtn');
            if(myEl != null)
            {
                myEl.addEventListener('click', function() {
			logout();
		}, false);
            }
            
        </script>
        
        <script>
            function logout()
            {
                SetCookie("loggedIn", "NO");
                window.location.href = "/";
            }
        </script>
    </body>
</html>
