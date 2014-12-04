package com.elasticbox.usecases.model.dao;

import java.util.List;

import com.elasticbox.usecases.model.entities.CarColor;

public interface CarColorDAO {
	public List<CarColor> getCarColorsByCarId(long carId);
}
