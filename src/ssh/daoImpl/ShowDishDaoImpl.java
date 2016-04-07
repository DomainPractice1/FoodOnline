package ssh.daoImpl;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import ssh.beans.Dish;
import ssh.dao.ShowDishDao;

public class ShowDishDaoImpl extends HibernateDaoSupport implements ShowDishDao {
	@SuppressWarnings("unchecked")
		public List<Dish> findAll(){
			String hql="from Dish";
			System.out.println("-------------------!!!!StartGetFromSQL");
			List<Dish> list=this.getHibernateTemplate().find(hql);
			System.out.println("-------------------!!!!"+list.get(0).getName());
			return list;
		}
}