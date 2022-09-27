package signIn;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		System.out.println("init 메서드 호출");
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String data = "<html><body>";
			data += "<h2>관리자 권한으로 로그인하셨습니다.</h2>";
			data += "<form style='margin:0 auto;' action='/project03/checkMember' method='POST'><input type='submit' value='회원 정보 삭제'></form>";
			data += "<form style='margin:0 auto;' action='/project03/admin/member.jsp' method='POST'><input type='submit' value='회원 정보 열람'></form>";
			data += "</html>";
			data += "</body>";
		out.print(data);
	}

	@Override
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}
}
