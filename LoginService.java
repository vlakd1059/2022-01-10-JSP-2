package com.session;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String t_id = "smhrd";
		String t_pw = "1234";
		String t_nick = "Smart";
		
		if(t_id.equals(id) && t_pw.equals(pw)) {
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("nick", t_nick);
			
			response.sendRedirect("main.jsp");
		}else {
			response.sendRedirect("loginF.html");
		}
	}

}
