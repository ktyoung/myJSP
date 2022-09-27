package signIn;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import signIn.MemberVO;

@WebServlet("/viewMembers")
public class ViewServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
		
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		MemberDAO dao = new MemberDAO();
		DeleteMember del = new DeleteMember();
		PrintWriter out=response.getWriter();

		String command=request.getParameter("command");
		
		if(command!= null && command.equals("addMember")){
			 String _id=request.getParameter("id");
			 String _pwd=request.getParameter("pass");
			 String _name=request.getParameter("name");
			 String _email=request.getParameter("email");
			 
			 MemberVO vo=new MemberVO();
			 vo.setId(_id);
			 vo.setPwd(_pwd);
			 vo.setName(_name);
			 vo.setEmail(_email);	
			 dao.addMember(vo);
		} else if(command != null && command.equals("delMember")) {
			String id = request.getParameter("id");
			del.doDelete(request, response);
		}
	}
}