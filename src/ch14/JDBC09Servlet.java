package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JDBC09Servlet
 */
@WebServlet("/JDBC09Servlet")
public class JDBC09Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC09Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		String name = executeJDBC(id);
		request.setAttribute("name", name);
		
		String path = "/ch14/jdbc08.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	private String executeJDBC(String id) {
		
		
		String name = ""; //리턴할 변수
		
		String sql = "SELECT CustomerName "
				+ "FROM Customers "
				+ "WHERE CustomerID= " + id;

		
		String url = "jdbc:mysql://13.209.84.120/test"; //본인 ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";
		
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		
		try {
			//클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//연결
		    con = DriverManager.getConnection(url, user, password);
		
		    //statement 생성
		    stmt = con.createStatement();
		
		    // 쿼리 실행, 결과(ResultSet) 리턴
		    rs = stmt.executeQuery(sql);
	
		    // 결과 탐색
		    if ( rs.next()) {
		    	name = rs.getString(1);
		    	
		    	String city = rs.getString(1);	
		    }		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		
		return name;
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
