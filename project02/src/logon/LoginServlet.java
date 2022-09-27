package logon;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/aylogin")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request,HttpServletResponse response)  throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String user_id = request.getParameter("userId");
		String user_pwd = request.getParameter("userPw");
		
		MemberVO memberVO = new MemberVO();
		memberVO.setId(user_id);
		memberVO.setPwd(user_pwd);
		MemberDAO dao = new MemberDAO();
		boolean result = dao.isExisted(memberVO);
		
		if(result) {
			HttpSession session = request.getSession();
			session.setAttribute("isLogon", true);
			session.setAttribute("login.id", user_id);
			session.setAttribute("login.pwd", user_pwd);
			
			out.print("<html><body>");
			out.print("�ȳ��ϼ��� " + user_id + "��! <br>");
			out.print("<a href='show'>ȸ����������</a>");
			out.print("</body></html>");
		} else {
			out.print("<script>");
			out.print("alert('�������� �ʴ� �����Դϴ�.');");
			out.print("</script>");
			out.print("<html><body>");
			out.print("<a href='subPage/sub03/index.html'>�ٽ� �α���</a><br>");
			out.print("<a href='subPage/sub04/index.html'>ȸ������</a>");
			out.print("</body></html>");
			/*
			
			*/
		}
		
	}
}
