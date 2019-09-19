package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sun.org.apache.bcel.internal.generic.Select;

import util.JDBCUtil;

import vo.UsersVO;

public class UsersDao_Oracle { // data access object DB연동 코드를 가지고 있다. db연동 담당

	public List<UsersVO> getBookRec() {

		String sql = "SELECT * from Users";

		List<UsersVO> list = new ArrayList<UsersVO>();

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setInt(1, 1);
			ps.setInt(2, 5);
			// 실행 및 결과값 핸들링
			rs = ps.executeQuery();
			while (rs.next()) {
				UsersVO vo = new UsersVO();
				vo.setId(rs.getString("id"));
				vo.setPassword(rs.getString("password"));
				vo.setUser_name(rs.getString("User_name"));
				vo.setBirthday(rs.getDate("birthday"));
				vo.setEmail(rs.getString("email"));
				vo.setRole(rs.getString("role"));

				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, rs);
		}
		return list;
	}

	public int insertBook(UsersVO vo) throws Exception{

		String sql = "INSERT INTO Users(id, password, user_name, birthday, email, role) " + " VALUES((select nvl(max(id),0)+1 from users),?,?,?,?,?) ";
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
			ps.setString(5, vo.getUser_name());
			ps.setString(6, vo.getRole());
			result = ps.executeUpdate();
			
		} catch (Exception e) {
			//system.ouot.printIn(e);
			throw e;
		} finally {
			JDBCUtil.close(con, ps, null);
		}
		return result;
	}

	public int deleteUsers(UsersVO vo) {
		String sql = "delete from users where id= ?";
	
		Connection con = null;
		PreparedStatement ps = null;

		int result = 0;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, vo.getId() );
		
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
			
			// 실행 및 결과값 핸들링
			result = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, null);
		}
		return result;
	
	}
}
/*
 * INSERT INTO Book(bookid, bookname, publisher, price) VALUES(?, ?, ?, ?);
 * 
 * delete from book where bookid = ?
 * 
 * update book set price = ?, where bookid = ?; select * from ( select rownum
 * row#,deptno,dname,loc from (select * from dept order by deptno) )where row#
 * between ? and ?
 * 
 * select * from Book order by bookid
 * 
 * select count(*) from Book
 * 
 */
