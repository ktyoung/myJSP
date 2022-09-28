package signIn;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.omg.PortableServer.ID_ASSIGNMENT_POLICY_ID;

@WebServlet("/delete")
public class DeleteMember extends HttpServlet {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

    public DeleteMember() {
        try {
            Context ctx = new InitialContext();
            Context envContext = (Context) ctx.lookup("java:/comp/env");
            dataFactory = (DataSource) envContext.lookup("jdbc/oracle"); 
        } catch (Exception e) {
            e.printStackTrace();
        }
    }	
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String) request.getParameter("id");
		try {
			con = dataFactory.getConnection();
			String query = "DELETE FROM t_member" + " WHERE id=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);	
			pstmt.executeQuery();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
