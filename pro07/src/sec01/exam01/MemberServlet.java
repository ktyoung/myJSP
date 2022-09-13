package sec01.exam01;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member")
public class MemberServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		/* 필요한 JAR 파일(드라이버)은 오라클 홈페이지에서 직접 다운받아 WEB-INF 하위 lib 폴더에 추가한다. */
		// SQL문으로 조회할 MemberDAO 객체를 생성 
		MemberDAO dao = new MemberDAO();
		// listMembers() 메서드로 회원 정보를 조회
		// 리스트와 배열의 차이? 리스트는 데이터의 타입에서 자유롭다.
		List<MemberVO> list = dao.listMembers();
		
		out.print("<html><body>");
		out.print("<table border=1><tr align='center' bgcolor='lightgreen'>");
		out.print("<td>아이디</td><td>비밀번호</td><td>이름</td><td>이메일</td><td>가입일</td></tr>");
		
		for(int i=0; i<list.size(); i++) {
			MemberVO memberVO = (MemberVO) list.get(i);
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			Date joinDate = memberVO.getJoinDate();
			
			out.print("<tr><td>"+id+"</td><td>"+pwd+"</td><td>"+name+"</td><td>"+email+"</td><td>"+joinDate+"</td></tr>");
		}
		out.print("</table></body></html>");
		
		out.print("</table></body></html>");
	}
	
}