<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
	
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

	function fn_idChk(){
		$.ajax({
			url: "/idChk",
			type: "post",
			dataType: "json",
			data : {"member_id": $("member_id").val()},
			success : function(data){
				if(data == 1){
					alert("중복된 아이디입니다.");
				}else if(data == 0){
					$("#idChk").attr("value","Y");
					alert("사용가능한 아이디입니다.")
				}
			}
		})
	}
</script>
<body>
	<form method="post" action="/signup">
        ID : <input type="text" name="member_id" id="member_id">
        <button name="idChk" id="idChk" onclick="fn_idChk();" value="N">중복확인</button><br>
        password : <input type="password" name="member_pwd" id="member_pwd"><br>
        name : <input type="text" name="member_name" id="member_name"><br>
        <button type="submit" id="submit">회원가입</button>
        <button type="button"><a href="/">돌아가기</a></button>
    </form>
</body>
</html>