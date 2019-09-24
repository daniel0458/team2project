package service;

import java.util.List;

import dao.CoordiDAO;
import vo.CD_ClothVO;

public class CoordiServiceImp implements CoordiService {
	CoordiDAO dao;

	public CoordiServiceImp() {}
	public CoordiServiceImp(CoordiDAO dao) {
		this.dao = dao;
	}
	
	
	public CoordiDAO getDao() {
		return dao;
	}
	public void setDao(CoordiDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public int deleteCoordi(int coordi_id) {
		return dao.deleteCoordi(coordi_id);
	}
	@Override
	public int addCoordi(CD_ClothVO vo) {
		return dao.saveCoordi(vo);
	}
	@Override
	public List<CD_ClothVO> loadCoordi() {
		return dao.loadCoordi();
	}
}
