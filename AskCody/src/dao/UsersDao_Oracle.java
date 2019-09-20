package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sun.org.apache.bcel.internal.generic.Select;

import util.JDBCUtil;

import vo.UsersVO;

public class UsersDao_Oracle extends UsersDao { 

	

	public int insertusers(UsersVO vo) throws Exception{

		String sql = "INSERT INTO Users(id, password, user_name, birthday, email, role) VALUES (?,?,?,?,?,?) ";
		Connection con = null;
		PreparedStatement ps = null;

		int result = 0;

		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getPassword());
			ps.setString(3, vo.getUser_name());
			ps.setDate(4, vo.getBirthday());
			ps.setString(5, vo.getEmail());
			ps.setString(6, vo.getRole());
			result = ps.executeUpdate();
			
		} catch (Exception e) {
			throw e;
		} finally {
			JDBCUtil.close(con, ps, null);
		}
		return result;
	}

	public int deleteUsers(UsersVO vo) {
		String sql = "delete* from users";
	
		Connection con = null;
		PreparedStatement ps = null;

		int result = 0;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getId() );
			ps.setString(2, vo.getPassword());
			ps.setString(3, vo.getUser_name());
			ps.setDate(4, vo.getBirthday());
			ps.setString(5, vo.getUser_name());
			ps.setString(6, vo.getRole());
			
			result = ps.executeUpdate();
			// 실행 및 결과값 핸들링

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, null);
		}
		return result;
	

	}

	public int updateUsers(UsersVO vo) {
		String sql = "update users set password = ? where id = ?"; 
		Connection con = null;
		PreparedStatement ps = null;

		int result = 0;

		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getPassword());
			ps.setString(2, vo.getId());
			

			result = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, null);
		}
		return result;
	
	}
}
