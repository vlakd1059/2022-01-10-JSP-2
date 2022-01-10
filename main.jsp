<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String id= (String)session.getAttribute("id");
	String nick = (String)session.getAttribute("nick");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<body>
	<% if(id == null){ %>
		<h1>로그인 페이지</h1>
	
		<form action="LoginService" method="post">
			<table border="1">
				<tr>
					<td>ID:</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>PW:</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="로그인">
					</td>
				</tr>
			</table>
		</form>
	<% 
	}else{ 
		out.print("<h1>"+nick+"님<h1>");
		out.print("로그인 중입니다.<br>");
		out.print("<a href='board.jsp'>게시판</a>");
		out.print("<a href='logout.jsp'>로그아웃</a>");		
	} 
	%>
</body>
</body>
</html>