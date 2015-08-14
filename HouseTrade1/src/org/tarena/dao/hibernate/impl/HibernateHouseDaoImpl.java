package org.tarena.dao.hibernate.impl;


import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.tarena.dao.HouseDao;
import org.tarena.entity.House;
import org.tarena.entity.HouseImage;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
import com.sun.istack.internal.FinalArrayList;

@Repository("houseDao")
public class HibernateHouseDaoImpl implements HouseDao{
	
	
	@Resource(name="hibernateTemplate")
	private HibernateTemplate hibernateTemplate;

	public List<House> findAll() {
		return 
				hibernateTemplate.execute(new HibernateCallback<List<House>>() {

					public List<House> doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = 
								session.createQuery("from House");
						return query.list();
					}

				});
	}

	public List<House> findAllByWhere(final String where) {
		return 
				hibernateTemplate.execute(new HibernateCallback<List<House>>() {

					public List<House> doInHibernate(Session session)
							throws HibernateException, SQLException {
						String sql = "from House house where "+where;
						Query query = 
								session.createQuery(sql);
						return query.list();
					}

				});
	}

	public int houseInfoAdd(final House house) {
		return hibernateTemplate.execute(new HibernateCallback<Integer>() {
			public Integer doInHibernate(Session session)
					throws HibernateException, SQLException {
				Integer result = (Integer)session.save(house);				
				return result;
			}
		});
	}

	@Override
	public int saveImage(final HouseImage houseImage) {
		return hibernateTemplate.execute(new HibernateCallback<Integer>() {
			public Integer doInHibernate(Session session)
					throws HibernateException, SQLException {
				Integer result = (Integer)session.save(houseImage);				
				return result;
			}
		});
	}

	@Override
	public House findHouseById(final int where) {
		return   hibernateTemplate.execute(new HibernateCallback<House>() {

			public House doInHibernate(Session session)
					throws HibernateException, SQLException {
						House house = (House) session.get(House.class, where);
						return (House) session.get(House.class, where);
			}

		});
	}
	
	public List<House> findAll(final int page, final int pagenum) {
		return 
		hibernateTemplate.execute(new HibernateCallback<List<House>>() {

			public List<House> doInHibernate(Session session)
					throws HibernateException, SQLException {
				String hql = "from House house order by house.id desc";
				Query query = 
					session.createQuery(hql);
				query.setFirstResult((page-1)*pagenum);
				query.setMaxResults(pagenum);
				return query.list();
			}
			
		});
	}

	public List<House> findAllByWhere(final String where,final int page,final int pagenum) {
		return 
		hibernateTemplate.execute(new HibernateCallback<List<House>>() {

			public List<House> doInHibernate(Session session)
					throws HibernateException, SQLException {
				String sql = "from House house where "+where + " order by house.id desc";
				Query query = 
					session.createQuery(sql);
				query.setFirstResult((page-1)*pagenum);
				query.setMaxResults(pagenum);
				return query.list();
			}
			
		});
	}

	@Override
	public List<House> findAllData() {
		return
		hibernateTemplate.execute(new HibernateCallback<List<House>>() {

			public List<House> doInHibernate(Session session)
					throws HibernateException, SQLException {
				Query query = 
					session.createQuery("from House");
				return query.list();
			}
		});
	}

	@Override
	public List<House> findAllByKey(final String where) {
		return 
		hibernateTemplate.execute(new HibernateCallback<List<House>>() {

			public List<House> doInHibernate(Session session)
					throws HibernateException, SQLException {
				String sql = "from House house where "+where;
				Query query = 
					session.createQuery(sql);
				return query.list();
			}
			
		});
	}
	
	
}
