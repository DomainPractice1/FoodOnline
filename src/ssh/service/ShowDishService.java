package ssh.service;

import java.util.List; 
import ssh.beans.Dish;
public interface ShowDishService {
	public List<Dish> findAll();
}