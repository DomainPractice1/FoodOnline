package ssh.serviceImpl;
import java.util.List;
import ssh.dao.ShowDishDao;
import ssh.service.ShowDishService;
import ssh.beans.Dish;


public class ShowDishServiceImpl implements ShowDishService{
	private ShowDishDao showDishDao;
	public List<Dish> findAll(){
		return showDishDao.findAll();
	}
	public ShowDishDao getShowDishDao() {
		return showDishDao;
	}
	public void setShowDishDao(ShowDishDao showDishDao) {
		this.showDishDao = showDishDao;
	}
}
