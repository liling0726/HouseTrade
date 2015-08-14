package org.tarena.test;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.Calendar;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.tarena.dao.HouseDao;
import org.tarena.dao.hibernate.impl.HibernateHouseDaoImpl;
import org.tarena.entity.House;
import org.tarena.entity.User;

public class AddTest {
		ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:spring-mvc.xml");
		@Test
		public void view(){
			HouseDao hdi = (HouseDao) ac.getBean("houseDao");
			hdi.findAll();
		}
		@Test
		public void find(){
			HouseDao hdi = (HouseDao) ac.getBean("houseDao");
			House house = hdi.findHouseById(4);
			Calendar c = Calendar.getInstance();
			int ConstructionYear = new Integer(house.getConstructionYear());
			int utilYear = c.get(Calendar.YEAR)-ConstructionYear;
			System.out.println(utilYear);
		}
	

			@Test
			public void add(){
		
				ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mvc.xml");
		
				HibernateHouseDaoImpl hdi = (HibernateHouseDaoImpl) ac.getBean("houseDao");
		
		
				House house = new House();
		
				house.setSmallArea("青龙");
				house.setRoom(4);
				house.setHall(2);
				house.setBathroom(3);
				house.setHouseArea(222.3);
				house.setTotalFloor(20);
				house.setFloor(4);
				house.setHasElevator(true);
				house.setOrientation("南北");
				house.setDecoration("山东");
				house.setBuildingStructure("收到");
				house.setHousingType("电脑");
				house.setPropertyRightYear(70);
				house.setPropertyRightType("商品");
				house.setSalePrice(new BigDecimal("256.3"));
				house.setTitle("标题");
				house.setDetailDesc("东方健康来访汇聚会计师李会如何热敷");
				house.setConstructionYear("2015-05-04");
		
				house.setPublishTime(Date.valueOf("2015-05-04"));
				house.setContactPerson("易翠");
				house.setContactTel("11110");
		
				User u = new User();
				u.setPassword("root");
				u.setId(1);
			u.setUserName("root");
				
				house.setUser(u);
		
				hdi.houseInfoAdd(house);
		
			}

}
