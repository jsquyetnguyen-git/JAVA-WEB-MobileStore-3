package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import context.DBContext;
import model.Account;

public class AccountDAO {
	public Account adminLogin(String user_mail, String password) throws Exception {
		Account account = new Account();
		String query = "select * from Account where account_role = 1 and user_mail = ? and password = ?";
		DBContext db = new DBContext();
		Connection conn =  db.getConnection();
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, user_mail);
		ps.setString(2, password);
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			account.setUsr(rs.getString(1));
			account.setPwd(rs.getString(2));
			account.setName(rs.getString(4));
		}
		
		return account;
	}
}
