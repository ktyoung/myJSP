package sec02.exam01;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.jar.Attributes.Name;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import javax.sql.RowSet;

public class MemberDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

    public MemberDAO() {
        try {
            Context ctx = new InitialContext();
            Context envContext = (Context) ctx.lookup("java:/comp/env");
            dataFactory = (DataSource) envContext.lookup("jdbc/oracle"); 
        } catch (Exception e) {
            e.printStackTrace();
        }
    }	
	
	public List listMembers() {
		List list = new ArrayList();
		try {
			con = dataFactory.getConnection();
			String query = "SELECT * FROM t_member ";
			System.out.println("prepareStatememt: " + query);

			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();			
			while (rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");

				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				
				list.add(vo);				
			}
			rs.close();
			pstmt.close();
			con.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List listMembers(MemberVO memberVO) {
		List membersList = new ArrayList();
		String _name=memberVO.getName();
		try {
			con = dataFactory.getConnection();
			String query = "select * from t_member ";
			
			if((_name!=null && _name.length()!=0)){
				 query+="where name=?";
				 pstmt = con.prepareStatement(query);
				 pstmt.setString(1, _name);
			}else {
				pstmt = con.prepareStatement(query);	
			}
			
			
			System.out.println("prepareStatememt: " + query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				membersList.add(vo);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return membersList;
	}
	
	public void addMember(MemberVO memberVO) {
		try {
			con = dataFactory.getConnection();
			String id = memberVO.getId();
			String pwd = memberVO.getPwd();
			String name = memberVO.getName();
			String email = memberVO.getEmail();
			String query = "INSERT INTO t_member";
			query += " (id,pwd,name,email)";
			query += " VALUES(?,?,?,?)";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, email);	
			pstmt.executeUpdate();
			pstmt.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void delMember(String id) {
		try {
			con = dataFactory.getConnection();
			String query = "DELETE FROM t_member" + " WHERE id=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);	
			pstmt.executeUpdate();
			pstmt.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
	
	public boolean isExisted(MemberVO memberVO) {
		boolean result = false;
		String id = memberVO.getId();
		String pwd = memberVO.getPwd();
		try {
			con = dataFactory.getConnection();
			String query = "SELECT DECODE(COUNT(*), 1, 'true', 'false') AS RESULT FROM t_member";
			query += " WHERE id=? AND pwd=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			result = Boolean.parseBoolean(rs.getString("result"));
			System.out.println("result = " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
