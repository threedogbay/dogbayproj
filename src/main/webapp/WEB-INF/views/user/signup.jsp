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
			alert("���̵� �Է����ּ���.");
			$("#member_id").focus();
			return false;
		}
		if($("#member_pwd").val()==""){
			alert("��й�ȣ�� �Է����ּ���.");
			$("#member_pwd").focus();
			return false;
		}
		if($("#member_name").val()==""){
			alert("������ �Է����ּ���.");
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
					alert("�ߺ��� ���̵��Դϴ�.");
				}else if(data == 0){
					$("#idChk").attr("value","Y");
					alert("��밡���� ���̵��Դϴ�.")
				}
			}
		})
	}
</script>
<body>
	<form method="post" action="/signup">
        ID : <input type="text" name="member_id" id="member_id">
        <button name="idChk" id="idChk" onclick="fn_idChk();" value="N">�ߺ�Ȯ��</button><br>
        password : <input type="password" name="member_pwd" id="member_pwd"><br>
        name : <input type="text" name="member_name" id="member_name"><br>
        <button type="submit" id="submit">ȸ������</button>
        <button type="button"><a href="/">���ư���</a></button>
    </form>
</body>
</html>