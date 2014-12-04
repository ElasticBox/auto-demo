package com.elasticbox.usecases.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.elasticbox.usecases.model.dao.AccessoryDAO;
import com.elasticbox.usecases.model.dao.CarColorDAO;
import com.elasticbox.usecases.model.dao.CarDAO;
import com.elasticbox.usecases.model.dao.RimsColorDAO;
import com.elasticbox.usecases.model.entities.Accessory;
import com.elasticbox.usecases.model.entities.Car;
import com.elasticbox.usecases.model.entities.CarColor;
import com.elasticbox.usecases.model.entities.RimsColor;

@Service
public class EbxConfiguratorServiceImpl implements EbxConfiguratorService {

	@Autowired
	private CarDAO carDAO;
	
	@Autowired
	private CarColorDAO carColorDAO;
	
	@Autowired
	private RimsColorDAO rimsColorDAO;
	
	@Autowired
	private AccessoryDAO accesoryDAO;
	
	@Override
	@Transactional
	public List<Car> getAllCars() {
		return this.carDAO.getAllCars();
	}

	@Override
	@Transactional
	public List<CarColor> getCarColorByCarId(long carId) {
		return this.carColorDAO.getCarColorsByCarId(carId);
	}

	@Override
	@Transactional
	public List<RimsColor> getRimsColorByCarId(long carId) {
		return this.rimsColorDAO.getRimsColorsByCarId(carId);
	}
	
	@Override
	@Transactional
	public List<Accessory> getAccessoriesByCarId(long carId) {
		return this.accesoryDAO.getAllAccesoriesByCarId(carId);
	}


}
