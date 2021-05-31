package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Employee;

/**
 * Servlet implementation class JDBC12Servelt
 */
@WebServlet("/JDBC12Servelt")
public class JDBC12Servelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC12Servelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Employee> list = executeJDBC();
		
		request.setAttribute("employees", list);
		
		String path = "/ch14/jdbc12.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

private List<Employee> executeJDBC() {
		
		
		List<Employee> list = new ArrayList<Employee>(); //리턴할 객체
		
		String sql = "SELECT EmployeeID, LastName, FirstName, Notes "
				+ "FROM Employees "; 

		System.out.println(sql);
		
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
		   while (rs.next()) {
		    	
		    	Employee employee = new Employee();
		    	employee.setId(rs.getInt(1));
				employee.setLastName(rs.getString(2));
				employee.setFirstName(rs.getString(3));
				employee.setNotes(rs.getString(4));
		    	
		    	list.add(employee);
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
		
		return list;
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
