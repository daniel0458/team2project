package service;

import java.util.List;

import dao.UsersDao;
import vo.UsersVO;

public class UsersServiceImpl implements UsersService {

	UsersDao dao;
	
	public  UsersServiceImpl() {}

	
	public UsersServiceImpl(UsersDao dao) {
		this.dao = dao;
	}


	public UsersDao getDao() {
		return dao;
	}


	public void setDao(UsersDao dao) {
		this.dao = dao;
	}


	@Override
	public int insertuser(UsersVO vo) throws Exception {
		return dao.insertusers(vo);
	}

	@Override
	public int deleteusers(UsersVO vo) {
		return dao.deleteusers(vo);
	}

	@Override
	public int updateusers(UsersVO vo) {
		return dao.updateusers(vo);
	}


}


