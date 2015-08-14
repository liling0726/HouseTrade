package org.tarena.service.impl;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.tarena.dao.HouseDao;
import org.tarena.entity.House;
import org.tarena.entity.HouseImage;
import org.tarena.james.extend.SearchConditionConfigLoader;
import org.tarena.james.extend.SearchPage;
import org.tarena.james.extend.SearchPageLoader;
import org.tarena.service.HouseService;


@Service("houseService")
public class HouseServiceImpl implements HouseService {
	@Resource(name="houseDao")
	private HouseDao houseDao;
	
	/**
	 * 房屋信息添加
	 */
	public int houseInfoAdd(House house) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		house.setPublishTime(java.sql.Date.valueOf(format.format(date)));
		
		return houseDao.houseInfoAdd(house);
	}
	
	
	/**
	 * 图片保存
	 */
	public int saveImage(int houseId, String uploadPath,
			MultipartFile[] uploadFiles) {
		
		int resultStatu = 0;
		String fileName;
		
		for(MultipartFile uploadFile : uploadFiles){
			
			String suffix = 
				uploadFile.getOriginalFilename().substring(uploadFile.getOriginalFilename().lastIndexOf("."));
			String uploadFileName = 
				UUID.randomUUID().toString();
			File destFile = new File(uploadPath+"/"+uploadFileName+suffix);
			
			fileName = uploadFileName+suffix;
			
			try {
				FileUtils.copyInputStreamToFile(uploadFile.getInputStream(),
						destFile);
				
				HouseImage houseImage = new HouseImage();
				houseImage.setName(fileName);
				houseImage.setHouseId(houseId);
				
				resultStatu = houseDao.saveImage(houseImage);
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		return resultStatu;
	}


	@Override
	public House findHouseById(int id) {
		return houseDao.findHouseById(id);
	}
	
	@Override
	public List<House> findAll() {
		/**总页数*////////////////////////////////////
		int pageData = houseDao.findAllData().size();
		int pageAll;
		if(pageData%5 == 0)
			pageAll = pageData/5 - 1;
		else
			pageAll = pageData/5;
		SearchPage.PAGE_NUM = pageAll;
		////////////////////////////////////////////
		
		int page = 1;
		int pagenum = 5;
		List<House> houseList = 
			houseDao.findAll(page, pagenum);
		return houseList;
	}

	@Override
	public List<House> findAllByPrimaryKey(String params) {
		String where = SearchConditionConfigLoader.getParamsSQl(params);
		String page = SearchPageLoader.getParamsSQl(params);
		//////修改的代码/////////////////////////////
		int pageData = houseDao.findAllByKey(where).size();
		int pageAll;
		if(pageData%5 == 0)
			pageAll = pageData/5 - 1;
		else
			pageAll = pageData/5;
		SearchPage.PAGE_NUM = pageAll; 
		
		int currentPage;
		if(pageAll != 0)
			currentPage = Integer.parseInt(page);
		else
			currentPage = 1;
		//////////////////////////////////////////////
		
		
		int pageNum = 5;
		List<House> houseList = 
			houseDao.findAllByWhere(where, currentPage, pageNum);
		return houseList;
	}
	

}
