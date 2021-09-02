<%@include file = "../layout/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Sign Up Form | Vanilla Javascript</title>
</head>
<body>
    <section>
        <div class="container">
            <div class = "user signinBx">
                <div class="imgBx"><img src="img1.jpg"></div>
                <div class="formBx">
                    <form action="/login" method="post">
                        <h2>Sign In</h2>
                        <input type="text" placeholder="Username">
                        <input type="password" placeholder="password">
                        <input type="submit" value="Login">
                        <p class="signup">don't have an account? <a href="#" onclick="toggleForm();">Sign up</a></p>
                    </form>
                </div>    
            </div>

            <div class = "user signupBx">
               
                <div class="formBx">
                    <form action="/signup" method="post">
                        <h2>Create an account</h2>
                        <input type="text" placeholder="Username">
                        <input type="text" placeholder="Email Address">
                        <input type="password" placeholder="password">
                        <input type="submit" value="Sign up">
                        <p class="signup">Already have an account? <a href="#" onclick="toggleForm();">Sign in</a></p>
                    </form>
                </div>    
                <div class="imgBx"><img src="img2.jpg"></div>
            </div>
        </div>
    </section>

    <script>
        function toggleForm(){
            section = document.querySelector('section');
            container = document.querySelector('.container');
            container.classList.toggle('active');
            section.classList.toggle('active');
        }

    </script>
</body>
</html>
<%@include file = "../layout/footer.jsp" %>
    
</html>