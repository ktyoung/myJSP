package logon;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.lang.model.type.NullType;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.RepaintManager;

import logon.MemberVO;

@WebServlet("/show")
public class ShowMember extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String id = "", pwd = "";
		Boolean isLogon = false;
		HttpSession session = request.getSession(false);
		if(session != null) {
			isLogon = (Boolean) session.getAttribute("isLogon");
			if(isLogon == true) {
				id = (String) session.getAttribute("login.id");
				pwd = (String) session.getAttribute("login.pwd");
				
				out.print("<html><body>");
				out.print("아이디 : " + id + "<br>");
				out.print("비밀번호 : " + pwd + "<br>");
				out.print("<a href='index.html'>메인 페이지로 이동</a>");
				out.print("</body></html>");
			} else {
				response.sendRedirect("subPage/sub03/index.html");
			}
		} else {
			response.sendRedirect("subPage/sub03/index.html");
		}
		
	}
	
}
