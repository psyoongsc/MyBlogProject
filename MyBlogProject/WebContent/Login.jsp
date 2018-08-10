<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<script language="JavaScript">
	function In_Check() {
		if (document.login.id.value == "") {
			alert("아이디를 입력하세요!!!");
			return;
		}
		if (document.login.pw.value == "") {
			alert("비밀번호를 입력하세요!!!");
			return;
		}
		document.login.submit();
	}
</script>
</head>
<body>
	<center>
		<form method="post" action="LoginProc.jsp" name="login">
			<table border="1" cellspacing="1">
				<tr>
					<td>아 이 디 : </td>
					<td><input type="text" name="id" size=17></td></tr>
				<tr>
					<td>비밀번호 : </td>
					<td><input type="text" name="pw" size=17></td></tr>
				<tr>
					<td align=center colspan="2">
						<input type="button" value="로그인" OnClick="In_Check()">
						<input type="reset" value="취  소"></td></tr>
			</table>
		</form>
	</center>
</body>
</html>