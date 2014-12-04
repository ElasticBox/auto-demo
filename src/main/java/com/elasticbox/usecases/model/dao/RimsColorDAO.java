package com.elasticbox.usecases.model.dao;

import java.util.List;

import com.elasticbox.usecases.model.entities.RimsColor;

public interface RimsColorDAO {
	public List<RimsColor> getRimsColorsByCarId(long carId);
}
