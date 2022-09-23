<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*"
    import="signIn.*"
    pageEncoding="UTF-8"
%>
<%
	request.setCharacterEncoding("utf-8");
	String _name = request.getParameter("name");
	MemberVO memberVO = new MemberVO();
	memberVO.setName(_name);
	MemberDAO dao = new MemberDAO();
	List membersList = dao.listMembers(memberVO);
%>
	<div style="margin-top : -30px;">
		<ul style="margin: 30px 0 0 0; color : #333333;">
			<li style="padding : 10px 0px; display : block; margin : 0 auto; font-weight: bold; border-top: solid 2px #dddddd; border-bottom: solid 2px #dddddd; background-color: #eeeeee;">
				<span style="width : 100px; text-align : center; display : inline-block;">아이디</span>
				<span style="width : 100px; text-align : center; display : inline-block;">비밀번호</span>
				<span style="width : 100px; text-align : center; display : inline-block;">이름</span>
				<span style="width : 185px; text-align : center; display : inline-block;">이메일</span>
				<span style="width : 185px; text-align : center; display : inline-block;">가입일자</span>
				<span style="width : 100px; text-align : center; display : inline-block;">삭제</span>
			</li>
		<%
			for(int i=0; i < membersList.size(); i++) {
				MemberVO vo = (MemberVO) membersList.get(i);
				String id = vo.getId();
				String pwd = vo.getPwd();
				String name = vo.getName();
				String email = vo.getEmail();
				Date joinDate = vo.getJoinDate();
		%>
			<li style="padding : 10px 0px; display : block; margin : 0 auto; border-bottom: solid 1px #dddddd; background-color: #ffffff;">
				<span style="width : 100px; text-align : center; display : inline-block; font-size : 14px;"><%= id %></span>
				<span style="width : 100px; text-align : center; display : inline-block; font-size : 14px;"><%= pwd %></span>
				<span style="width : 100px; text-align : center; display : inline-block; font-size : 14px;"><%= name %></span>
				<span style="width : 185px; text-align : center; display : inline-block; font-size : 14px;"><%= email %></span>
				<span style="width : 185px; text-align : center; display : inline-block; font-size : 14px;"><%= joinDate %></span>
				<form style="display : inline-block; margin:0 auto;" action="/project03/checkMember?command=delMember&id=<%= id %>"; method='POST'><input type='submit' value='삭제'></form>
			</li>
		<%	
			}
		%>
		</ul>
	</div>