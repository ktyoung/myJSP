package sec04.exam01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/guguTest3")
public class guguTest3 extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		System.out.println("init �޼��� ȣ��");
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		int dan = Integer.parseInt(request.getParameter("dan"));
		
		out.print("<table border=1 width=800 align=center>");
		out.print("<tr align=center bgcolor='#ffff66'>");
		out.print("<td colspan=4>" + dan + " �� ��� </td>	");
		out.print("</tr>");
		
		for(int i=1; i<10; i++) {
			/* �� �࿡ ���� �ڽ��� üũ�ڽ��� ǥ���Ѵ�. */
			
			if(i%2==0) {
				out.print("<tr align=center bgcolor='#acfa58'>");
			} else {
				out.print("<tr align=center bgcolor='#81bef7'>");
			}
			/*out.print("<tr align=center>");*/
			out.print("<td width=200>"+i+"<input type=radio>");
			out.print("<td width=200>"+i+"<input type=checkbox>");
			out.print("<td width=400>");
			out.print(dan + " * " + i);
			out.print("</td>");
			out.print("<td width=400>");
			out.print(dan*i);
			out.print("</td>");
			out.print("</tr>");
			
		}
		out.print("</table>");
	}

	@Override
	public void destroy() {
		System.out.println("destroy �޼��� ȣ��");
	}
	
	
}
