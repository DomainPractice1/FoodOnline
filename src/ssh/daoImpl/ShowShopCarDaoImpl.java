package ssh.daoImpl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import ssh.beans.ShopCar;
import ssh.dao.ShowDishDao;
import ssh.dao.ShowShopCarDao;


public class ShowShopCarDaoImpl  extends HibernateDaoSupport implements ShowShopCarDao {
	public List<ShopCar> findAll(String loginUser){
		String hql="from ShopCar as s where s.username = '"+loginUser+"'";
		System.out.println("-------------------!!!!StartGetFromSQL:"+loginUser);
		List<ShopCar> list=this.getHibernateTemplate().find(hql);
		System.out.println("-------------------!!!!"+list.get(0).getName());
		return list;
	}
}
