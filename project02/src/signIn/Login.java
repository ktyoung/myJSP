package signIn;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// @WebServlet("/aylogin")
public class Login extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		System.out.println("init 메서드 호출");
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("userId");
		String pw = request.getParameter("userPw");
		System.out.println("아이디 : " + id);
		System.out.println("비밀번호 : " + pw);
		
		String data = "<html>";
			data += "<body>";
			data += "아이디 : " + id;
			data += "<br>";
			data += "비밀번호 : " + pw;
			data += "<br><br>";
			data += "<a href='/project02/'>메인 페이지로 이동</a>";
			data += "</html>";
			data += "</body>";
		out.print(data);
	}

	@Override
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}
}
