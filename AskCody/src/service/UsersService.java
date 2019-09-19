package service;

import java.util.List;

import vo.UsersVO;

public interface UsersService {

	int adduser(UsersVO  vo);
	int deleteuser(UsersVO vo);
	int updateuser(UsersVO vo);
	List <UsersVO> userlist();
	
	
	
}
