package com.elasticbox.usecases.model.dao;

import java.util.List;

import com.elasticbox.usecases.model.entities.Accessory;

public interface AccessoryDAO {
	public List<Accessory> getAllAccesoriesByCarId(long carId);
}
