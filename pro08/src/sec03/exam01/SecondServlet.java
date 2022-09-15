package sec03.exam01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/second")
public class SecondServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8;");
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>");
		String name=request.getParameter("name");
		out.println("이름 : " + name);
		out.println("<br>");
		out.println("RequestDispatcher 클래스의 forword() 메서드를 이용한 dispatch 실습");
		out.println("</html></body>");	
	}
}
