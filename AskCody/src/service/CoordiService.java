package service;

import java.util.List;

import vo.CD_ClothVO;

public interface CoordiService {
	
	List <CD_ClothVO> loadCoordi();
	int addCoordi(CD_ClothVO vo);
	int deleteCoordi(int coordi_id);
	
}
