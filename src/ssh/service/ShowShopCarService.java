package ssh.service;

import java.util.List;

import ssh.beans.Dish;
import ssh.beans.ShopCar;

public interface ShowShopCarService {
	public List<ShopCar> findAll(String loginUser);
}
