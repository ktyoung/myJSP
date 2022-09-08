package sec03.exam02;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login4")
public class LoginServlet4 extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		System.out.println("init �޼��� ȣ��");
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet �޼��� ȣ��");
		doHandle(request,response);
	}
	
	// doHandle �޼��带 ����ϸ� ���۹��(post, get)�� ������� �޼��带 ����� �� ����
	private void doHandle(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		System.out.println("doHandle �޼��� ȣ��");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		System.out.println("���̵� : " + user_id);
		System.out.println("��й�ȣ : " + user_pw);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost �޼��� ȣ��");
		doHandle(request,response);
	}

	@Override
	public void destroy() {
		System.out.println("destroy �޼��� ȣ��");
	}
	
}