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
		System.out.println("init �޼��� ȣ��");
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("userId");
		String pw = request.getParameter("userPw");
		System.out.println("���̵� : " + id);
		System.out.println("��й�ȣ : " + pw);
		
		String data = "<html>";
			data += "<body>";
			data += "���̵� : " + id;
			data += "<br>";
			data += "��й�ȣ : " + pw;
			data += "<br><br>";
			data += "<a href='/project02/'>���� �������� �̵�</a>";
			data += "</html>";
			data += "</body>";
		out.print(data);
	}

	@Override
	public void destroy() {
		System.out.println("destroy �޼��� ȣ��");
	}
}
