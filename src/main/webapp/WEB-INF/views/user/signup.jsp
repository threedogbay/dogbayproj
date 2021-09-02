<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<body>
	<form method="post" action="/signup">
        ID : <input type="text" name="member_id" id="member_id">
        <input type="button" name="idChk" id="idChk" onclick="fn_idChk();" value="중복확인">중복확인<br>
        password : <input type="password" name="member_pwd" id="member_pwd"><br>
        name : <input type="text" name="member_name" id="member_name"><br>
        <button type="submit" id="submit">회원가입</button>
        <button type="button"><a href="/">돌아가기</a></button>
    </form>
    
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
					alert("중복된 아이디입니다.");
				}else if(data == 0){
					$("#idChk").attr("value","Y");
					alert("사용가능한 아이디입니다.")
				}
			},
			error:function(request, status, error){
				alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
			}
		})
	}
</script>
</body>
</html>