package com.elasticbox.usecases.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.elasticbox.usecases.model.entities.CarColor;

@Repository
public class CarColorDAOImpl implements CarColorDAO {

	private static final Logger logger = LoggerFactory.getLogger(CarColorDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
			
	@SuppressWarnings("unchecked")
	@Override
	public List<CarColor> getCarColorsByCarId(long carId) {
		Session session = this.sessionFactory.getCurrentSession();
		List<CarColor> carColorList = session.createQuery("from CarColor cc where cc.car.id=" + carId).list();
		for (CarColor cc:carColorList) {
			logger.info("Car color in list::" + cc);
		}
		return carColorList;
	}

}
