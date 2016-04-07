package ssh.dao;
import java.util.List;
import ssh.beans.Dish;

public interface ShowDishDao{
	public List<Dish> findAll();
}