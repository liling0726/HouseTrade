package org.tarena.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;
import org.tarena.entity.House;

public interface HouseService {
	
	public int houseInfoAdd(House house);
	public int saveImage(int houseId,String uploadPath,MultipartFile[] uploadFiles);
	public  House findHouseById(int id);
	public List<House> findAll();
	public List<House> findAllByPrimaryKey(String params);
}
