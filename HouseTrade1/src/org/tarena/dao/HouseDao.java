package org.tarena.dao;

import java.util.List;

import org.tarena.entity.House;
import org.tarena.entity.HouseImage;

public interface HouseDao {
	public List<House> findAll();
	public List<House> findAllByWhere(String where);
	public int houseInfoAdd(House house);
	public int saveImage(HouseImage houseImage);
	public  House findHouseById(int id);
	public List<House> findAllData();
	public List<House> findAll(int page, int pagenum);
	public List<House> findAllByWhere(String where, int page, int pagenum);
	public List<House> findAllByKey(String where);
	
}
