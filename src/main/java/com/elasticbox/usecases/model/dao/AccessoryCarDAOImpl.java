package com.elasticbox.usecases.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.elasticbox.usecases.model.entities.Accessory;

@Repository
public class AccessoryCarDAOImpl implements AccessoryDAO {

	private static final Logger logger = LoggerFactory.getLogger(AccessoryCarDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Accessory> getAllAccesoriesByCarId(long carId) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Accessory> accesoryList = session.createQuery("from Accessory a where a.car.id=" + carId).list();
		for (Accessory a:accesoryList) {
			logger.info("Accesory in list::" + a);
		}
		return accesoryList;
	}

}
