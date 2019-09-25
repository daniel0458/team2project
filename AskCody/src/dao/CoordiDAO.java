package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.JDBCUtil;
import vo.CoordiVO;

public class CoordiDAO {
	public int saveCoordi(CoordiVO vo) {
		System.out.println("코디 저장 시작");
		String sql = "insert into coordi values((select nvl(max(coordi_id),0)+1 from coordi),'저장','5',sysdate) ";
		
		Connection con = null;
		PreparedStatement ps = null;
		int result = 0;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);

//			//? 세팅
			
//			ps.setInt(1, vo.getCoordi_id());
//			ps.setString(1, vo.getImage());
//			System.out.println("vo.getImage()  => "+vo.getImage());
			
			//실행 및 결과값 핸들링
			result = ps.executeUpdate();
			
			System.out.println("코디 저장 완료");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, null);
		}
		return result;
	}
	
	public List<CoordiVO> loadCoordi(String user_id) {
		System.out.println("Coordibook load 요청처리");
		String sql ="select * from coordi where user_id=? ";
		
		List <CoordiVO> list = new ArrayList<CoordiVO>();
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			//? 세팅
			ps.setString(1, user_id);
			//실행 및 결과값 핸들링
			rs = ps.executeQuery();
			while(rs.next()) {
				CoordiVO vo = new CoordiVO();
				vo.setCoordi_id(rs.getInt("coordi_id"));
				vo.setCoordi_name(rs.getString("coordi_name"));
				vo.setUser_id(rs.getString("user_id"));
				//vo.setCoordi_date(rs.getDate(4));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, rs);
		}
		return list;
		
	}
}
