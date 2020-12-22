package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Dto.MemberInfoBean;


public class DataAccessObject {
	private static DataAccessObject dao;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public static DataAccessObject getInstance() {
		if(dao==null) {
			dao = new DataAccessObject();
		}
		return dao;
	}
	
	public void setConnection(Connection con) {
		this.con = con;
	}

	public String CheckId(String id) {
		String sql = "SELECT * FROM JSY_MEMBER WHERE STUID=?";
		String result = null;
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getString(1);
			}
			pstmt.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public String SignUp(MemberInfoBean mib) {
		String sql = "INSERT INTO JSY_MEMBER VALUES(?,?,1,?,?,2)";
		String result = null;
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, mib.getMeId());
			pstmt.setString(2, mib.getMePw());
			pstmt.setString(3, mib.getMeName());
			pstmt.setString(4, mib.getMeEmail());
			result = pstmt.executeUpdate()==1? "yes":"no";
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
			
	}

}












