<%@include file = "../layout/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="EUC-KR">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>SignUp</title>
</head>
<link rel="stylesheet" href="<%=path%>assets/css/loginStyle.css">
<body>
    <section>
        <div class="container">
            <div class = "user signinBx">
                <!-- <div class="imgBx"><img src="img1.jpg"></div> -->
                <div class="formBx">
                    <form action="/login" id="login" method="post">
                        <h2>Sign In</h2>
                        <input type="text" id="member_id" name="member_id" placeholder="USERNAME" value="">
                        <input type="password" id="member_pwd" name="member_pwd" placeholder="password" value="">
                        <input type="submit" value="Login">
                        <p class="signup">don't have an account? <a href="#" onclick="toggleForm();">Sign up</a></p>
                    </form>
                </div>    
            </div>

            <div class = "user signupBx">
               
                <div class="formBx">
                    <form action="/signup" id="SignUp" method="post">
                        <h2>Create an account</h2>
                        <input type="text" id="member_id" name="member_id" placeholder="ID" value="">
                        <input type="button" name="idChk" id="idChk" onclick="fn_idChk();" value="CHECK"><br>
                        <input type="password" id="member_pwd" name="member_name" placeholder="PASSWORD" value="">
                        <input type="text" id="member_name" name="member_name" placeholder="USERNAME" value="">
                        <input type="submit" value="Sign up">
                        <p class="signup">Already have an account? <a href="#" onclick="toggleForm();">Sign in</a></p>
                    </form>
                </div>    
               <!--  <div class="imgBx"><img src="img2.jpg"></div> -->
            </div>
        </div>
    </section>
    
    <script type="text/javascript">

//유효성 검사
$(document).ready(function(){
	$("#submit").on("click", function(){
		if($("#member_id").val()==""){
			alert("아이디를 입력해주세요.");
			$("#member_id").focus();
			return false;
		}
		if($("#member_pwd").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#member_pwd").focus();
			return false;
		}
		if($("#member_name").val()==""){
			alert("성명을 입력해주세요.");
			$("#member_name").focus();
			return false;
		}
	});
})

//중복체크
	function fn_idChk(){
	 console.log($('#member_id').val());
	 var params =  {"member_id": $("#member_id").val()};
	 console.log(params);
		$.ajax({
			url: "/user/idCheck",
			type: "post",
			dataType: 'JSON',
			data : {"member_id": $("#member_id").val()},
			success : function(data){
				if(data == 1){
					$("#member_id").attr("value","");
					alert("중복된 아이디입니다.");
				}else if(data == 0){
					$("#idChk").attr("value","CHECKED");
					alert("사용가능한 아이디입니다.")
				}
			},
			error:function(request, status, error){
				alert("code:" + request.status + "\n" + "error:" + error);
			}
		})
	}
</script>

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