package org.tarena.controller;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Date;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.tarena.dao.HouseDao;
import org.tarena.entity.House;
import org.tarena.entity.User;
import org.tarena.james.extend.SearchConditionConfigLoader;
import org.tarena.service.HouseService;

@Controller
public class HouseController {
	@Resource(name="houseService")
	private HouseService houseService;
	
	@Resource(name="houseDao")
	private HouseDao houseDao;
	
	@RequestMapping("/")
	public String list(HttpServletRequest req){
//		req.removeAttribute("params");
		List<House> houseList =
				houseService.findAll();
		req.setAttribute("houseList", houseList);
		return "forward:/list.jsp";
	}
	
	@RequestMapping("/{params}/")
	public String search(@PathVariable("params")String params,
			HttpServletRequest req){
//		req.setAttribute("params", params);
		List<House> houseList = houseService.findAllByPrimaryKey(params);
		req.setAttribute("houseList", houseList);
		return "forward:/list.jsp";
	}

	/**
	 * 信息发布
	 * @param uploadFiles
	 * @param req
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/addInfo")
	public String addHouseInfo(@RequestParam(value="files")MultipartFile[] uploadFiles,
			HttpServletRequest req) throws IOException{
		
		House house = new House();

		house.setSmallArea(req.getParameter("smallArea"));
		house.setRoom(Integer.parseInt(req.getParameter("room")));
		house.setHall(Integer.parseInt(req.getParameter("hall")));
		house.setBathroom(Integer.parseInt(req.getParameter("bathroom")));
		house.setHouseArea(new Double(req.getParameter("houseArea")));
		house.setTotalFloor(Integer.parseInt(req.getParameter("totalFloor")));
		house.setFloor(Integer.parseInt(req.getParameter("floor")));
		house.setHasElevator(new Boolean(req.getParameter("hasElevator")));
		house.setOrientation(req.getParameter("orientation"));
		house.setDecoration(req.getParameter("decoration"));
		house.setConstructionYear(req.getParameter("constructionYear"));
		house.setBuildingStructure(req.getParameter("buildingStructure"));
		house.setHousingType(req.getParameter("housingType"));
		house.setPropertyRightYear(Integer.parseInt(req.getParameter("propertyRightYear")));
		house.setPropertyRightType(req.getParameter("propertyRightType"));
		house.setSalePrice(new BigDecimal(req.getParameter("salePrice")));
		house.setTitle(req.getParameter("title"));
		house.setDetailDesc(req.getParameter("detailDesc"));

		if(req.getAttribute("user") == null){
			return "forward:login.jsp";
		}
		
		house.setUser((User)req.getAttribute("user"));
		house.setContactPerson(req.getParameter("contactPerson"));
		house.setContactTel(req.getParameter("contactTel"));

		int houseId;
		houseId = houseService.houseInfoAdd(house);
		
		houseService.saveImage(houseId, 
				req.getSession().getServletContext().getRealPath("/upload"), uploadFiles);
			
		return "forward:/";
	}
	@RequestMapping("/toPub")
	public String toPub(HttpServletRequest req){
		return "forward:/WEB-INF/jsp/details.jsp";
	}
				/*
				 * 查询房屋详情
				 */
				@RequestMapping("/findHouseById")
				public String findHouseById(HttpServletRequest req){
					System.out.println(req.getParameter("id"));
				int id = Integer.parseInt(req.getParameter("id"));
				Calendar c = Calendar.getInstance();
				try {
				House house = houseService.findHouseById(id);
				int ConstructionYear = new Integer(house.getConstructionYear());
				int utilYear = c.get(Calendar.YEAR)-ConstructionYear;
				req.setAttribute("house", house);
				req.setAttribute("utilYear", utilYear);
			
				} catch (Exception e) {
				System.out.println("获取详情失败");
				}
				return "forward:/houseDetail.jsp";
				}
			}
