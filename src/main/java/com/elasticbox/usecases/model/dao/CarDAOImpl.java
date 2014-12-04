package com.elasticbox.usecases.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.elasticbox.usecases.model.entities.Car;

@Repository
public class CarDAOImpl implements CarDAO {

	private static final Logger logger = LoggerFactory.getLogger(CarDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Car> getAllCars() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Car> carList = session.createQuery("from Car").list();
		for (Car c:carList) {
			logger.info("Car in list::" + c);
		}
		return carList;
	}

	@Override
	public Car getCarById(long carId) {
		Session session = this.sessionFactory.getCurrentSession();
		Car c = (Car) session.load(Car.class, new Long(carId));
		logger.info("Car loaded successfully; Car Details=" + c);
		return c;
	}

}
