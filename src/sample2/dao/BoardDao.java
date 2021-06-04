package sample2.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.dbcp.dbcp2.DriverManagerConnectionFactory;

import sample2.bean.Board;

public class BoardDao {
	
	private String url;
	private String user;
	private String password;
	
	public BoardDao() {
		this.url = "jdbc:mysql://13.209.84.120/Practice";
		this.user = "root";
		this.password = "wnddkdwjdqhcjfl1";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public boolean insert(Board board) {
		String sql = "INSERT INTO Board "
				+ "(title, body, memberId) "
				+ "VALUES "
				+ "(?, ?, ?) ";
		
		try (
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = con.prepareStatement(sql);
				) {
			
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getBody());
			pstmt.setString(3, board.getMemberId());
			
			int cnt = pstmt.executeUpdate();
			if (cnt == 1) {
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	public List<Board> list() {
		List<Board> list = new ArrayList<>();
		
		String sql = "SELECT id, title, memberId, inserted "
				+ "FROM Board "
				+ "ORDER BY id DESC ";
		
		try (
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
				) {
			
			while (rs.next()) {
				Board board = new Board();
				board.setId(rs.getInt(1));
				board.setTitle(rs.getString(2));
				board.setMemberId(rs.getString(3));
				board.setInserted(rs.getTimestamp(4));
				
				list.add(board);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
}












