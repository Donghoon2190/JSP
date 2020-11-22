package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.JdbcUtil;
import dto.TeacherInfoBean;

public class DataObject {
	
	private static DataObject dao;
	PreparedStatement ps;
	ResultSet rs;
	Connection con;
	
	public static DataObject getInstance() {
		if (dao==null) {
			dao = new DataObject();
		}
		return dao;
	}
	
	public boolean Telogin(TeacherInfoBean tib,Connection con) {
		String sql = "SELECT COUNT(TE_CODE) AS TE, TE_GRCODE,TE_CLCODE FROM TE WHERE TE_CODE =? AND TE_PWD=?"
				+ "GROUP BY TE_GRCODE,TE_CLCODE";
		boolean result = false;
		try {
			ps =  con.prepareStatement(sql);
			
			
			ps.setString(1, tib.getTeCode());
			ps.setString(2, tib.getTePwd());
			
			rs = ps.executeQuery();
			while(rs.next()) {
			if (rs.getString("TE").equals("1")) {
				tib.setTeGrade(rs.getInt("TE_GRCODE"));
				tib.setTeClass(rs.getInt("TE_CLCODE"));
				result = true;
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public boolean getTeinfo(TeacherInfoBean tib,Connection con) {
		boolean result =false;
		String sql = "SELECT TE_NAME, SU_NAME, TE_LEVEL, TE_CLCODE, TE_GRCODE, COUNT(ST_CODE) AS STCOUNT FROM TE INNER JOIN ST ON TE_CLCODE = ST_CLCODE AND TE_GRCODE = ST_GRCODE INNER JOIN SU ON SU_CODE = TE_SUCODE WHERE TE_CODE=? AND ST_STATE=? GROUP BY TE_NAME,SU_NAME,TE_LEVEL,TE_CLCODE,TE_GRCODE";
		
		try {
			ps=con.prepareStatement(sql);
			
			ps.setNString(1, tib.getTeCode());
			ps.setNString(2,"C");
			
			rs = ps.executeQuery();
			while (rs.next()) {
				tib.setTeName(rs.getString("TE_NAME"));
				tib.setTeSubject(rs.getString("SU_NAME"));
				tib.setTeLevel(rs.getString("TE_LEVEL"));
				tib.setTeClass(rs.getInt("TE_CLCODE"));
				tib.setTeGrade(rs.getInt("TE_GRCODE"));
				tib.setStCount(rs.getString("STCOUNT"));
				result = true;
			}
			JdbcUtil.close(ps);
			JdbcUtil.close(rs);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
		
	}
	
	
}












