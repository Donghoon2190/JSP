package Service;
import static Dao.DataAccessObject.*;
import static Db.JdbcUtill.*;

import java.sql.Connection;

import Dao.DataAccessObject;
import Dto.MemberInfoBean;

public class CheckService {
	DataAccessObject dao;
	Connection con;
	public CheckService () {
		dao = getInstance();
		con = getConnection();
		dao.setConnection(con);
	}
	public String enterance(int request ,String id , MemberInfoBean mib) {
		String result = null;
		switch (request) {
		case 1:
			result = CheckId(id);
			break;
		case 2:
			result = SignUp(mib);
			break;
		
		}
		return result;
	}
	private String SignUp(MemberInfoBean mib) {
		String result = null;
		result = dao.SignUp(mib);
		if (result=="yes") {
			commit(con);
		}else {
			rollback(con);
			
		}
		close(con);
		return result;
	}
	public String CheckId(String id) {
		String result = null;
		result = dao.CheckId(id);
		close(con);
		return result;
	}
	

}
