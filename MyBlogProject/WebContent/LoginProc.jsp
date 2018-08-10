<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<%@ page import="java.sql.*" %>    
<%@ page import="mbp_login.LoginBean" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="loginBean" class="mbp_login.LoginBean" scope="page" />
	<jsp:setProperty name="loginBean" property="id" />
	<jsp:setProperty name="loginBean" property="pw" />
	
<%
	String sql = "select PW from mbp.account where ID=?";
	String url = "jdbc:mysql://127.0.0.1/mbp?useSSL=false&useUnicode=true&characterEncoding=UTF-8";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection(url, "root", "1122");
		
		PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, loginBean.getId());
		
		ResultSet rs = stmt.executeQuery();
		
		rs.next();

		if (rs.getString("PW").equals(loginBean.getPw()))
			{
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
				<jsp:forward page="main.jsp">
					<jsp:param name="id" value="<%= loginBean.getId() %>" />
				</jsp:forward>
<%
			}

	}
	catch(SQLException ex) {
		%>
			<jsp:forward page="Login.jsp" />
		<%
	}
%>
</body>
</html>