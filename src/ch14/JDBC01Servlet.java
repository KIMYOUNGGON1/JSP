package ch14;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.pept.transport.Connection;

/**
 * Servlet implementation class JDBC01Servlet
 */
@WebServlet("/JDBC01Servlet")
public class JDBC01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC01Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		executeJDBC();
		
		response.getWriter().print("<h1>jdbc01</h1>");
	}
	
	private void executeJDBC() {
		
		String sql = "SELECT CustomerName FROM Custromers WHERE CustomerID = 1";

		//연결
		String url = "jdbc:mysql://13.209.84.120//text"; //본인 ip
		String user = "root";
		String password = "wndwkdwjdqhcjfl1";
		Connection con = DriverManager.getConnection(url, user, password);
		
		//statement 생성
		Statement stmt = con.createStatement();
		
		// 쿼리 실행, 결과(ResultSet) 리턴
		ResultSet rs = stmt.executeQuery(sql);
	
		// 결과 탐색
		if ( rs.next()) {
			String name = rs.getString(1);
			System.out.println(name);			
		}
		
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (con != null) {
			con.close();
		}
		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}