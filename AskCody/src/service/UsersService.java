package service;

import java.util.List;

import vo.UsersVO;

public interface UsersService {

	int deleteusers(UsersVO vo);
	int updateusers(UsersVO vo);
	int insertuser(UsersVO vo) throws Exception;

	
	
	
}
