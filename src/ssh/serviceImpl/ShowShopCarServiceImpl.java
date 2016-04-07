package ssh.serviceImpl;

import java.util.List;

import ssh.beans.ShopCar;
import ssh.dao.ShowShopCarDao;
import ssh.service.ShowShopCarService;

public class ShowShopCarServiceImpl implements ShowShopCarService {
	private ShowShopCarDao showShopCarDao;
	public List<ShopCar> findAll(String loginUser){
		return showShopCarDao.findAll(loginUser);
	}
	public ShowShopCarDao getShowShopCarDao() {
		return showShopCarDao;
	}
	public void setShowShopCarDao(ShowShopCarDao showShopCarDao) {
		this.showShopCarDao = showShopCarDao;
	}
}
