package org.tarena.dao.hibernate.impl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.tarena.dao.UserDao;
import org.tarena.entity.User;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	@Resource(name="hibernateTemplate")
    private HibernateTemplate hibernateTemplate;
	@Override
	public User findUserById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findUserByUserName(final String userName) {
		try {
			return hibernateTemplate.execute(new HibernateCallback<User>() {

				public User doInHibernate(Session session)
						throws HibernateException, SQLException {
					
					Query query = 
						session.createQuery("from User u where u.userName=?");
					query.setString(0, userName);
					if(query.list().isEmpty()){
						return null;
					}
					return (User) query.list().get(0);
				}});
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
				
	}

	@Override
	public boolean saveUser(final User user) {
		return hibernateTemplate.execute(new HibernateCallback<Boolean>() {

			public Boolean doInHibernate(Session session)
					throws HibernateException, SQLException {
				session.save(user);
				return true;
			}});
		
	}
	
}
