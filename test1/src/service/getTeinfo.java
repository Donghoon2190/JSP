package service;

import java.sql.Connection;

import dao.DataObject;
import db.JdbcUtil;
import dto.TeacherInfoBean;

public class getTeinfo {

	
	
	public boolean getTeinfo(TeacherInfoBean tib) {
		boolean result= false;
		
		DataObject dao = DataObject.getInstance();
		Connection con = JdbcUtil.getConnection();
		result = dao.Telogin(tib,con);
		if (result) {
			dao.getTeinfo(tib,con);
				JdbcUtil.commit(con);
				JdbcUtil.close(con);
			}
		else {
			JdbcUtil.rollback(con);
			JdbcUtil.close(con);
		}
		return result;
		
	}
		
	
}
