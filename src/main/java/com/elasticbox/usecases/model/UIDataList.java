package com.elasticbox.usecases.model;

import java.util.List;

import com.elasticbox.usecases.model.entities.Accessory;
import com.elasticbox.usecases.model.entities.CarColor;
import com.elasticbox.usecases.model.entities.RimsColor;

public class UIDataList {
	private List<CarColor> carColors;
	private List<RimsColor> rimsColors;
	private List<Accessory> accessories;

	public List<CarColor> getCarColors() {
		return carColors;
	}

	public void setCarColors(List<CarColor> carColors) {
		this.carColors = carColors;
	}

	public List<RimsColor> getRimsColors() {
		return rimsColors;
	}

	public void setRimsColors(List<RimsColor> rimsColors) {
		this.rimsColors = rimsColors;
	}

	public List<Accessory> getAccessories() {
		return accessories;
	}

	public void setAccessories(List<Accessory> accessories) {
		this.accessories = accessories;
	}

}
