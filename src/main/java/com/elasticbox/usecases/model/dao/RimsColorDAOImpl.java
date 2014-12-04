package com.elasticbox.usecases.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.elasticbox.usecases.model.entities.RimsColor;

@Repository
public class RimsColorDAOImpl implements RimsColorDAO {

	private static final Logger logger = LoggerFactory.getLogger(RimsColorDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<RimsColor> getRimsColorsByCarId(long carId) {
		Session session = this.sessionFactory.getCurrentSession();
		List<RimsColor> rimsColorList = session.createQuery("from RimsColor rc where rc.car.id=" + carId).list();
		for (RimsColor rc:rimsColorList) {
			logger.info("Rims color in list::" + rc);
		}
		return rimsColorList;
	}

}
