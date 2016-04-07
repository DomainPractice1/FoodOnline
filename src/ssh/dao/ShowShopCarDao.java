package ssh.dao;

import java.util.List;

import ssh.beans.Dish;
import ssh.beans.ShopCar;

public interface ShowShopCarDao {
	public List<ShopCar> findAll(String loginUser);
}
