package com.elasticbox.usecases.model.dao;

import java.util.List;

import com.elasticbox.usecases.model.entities.Car;

public interface CarDAO {
	public List<Car> getAllCars();
	public Car getCarById(long carId);
}
