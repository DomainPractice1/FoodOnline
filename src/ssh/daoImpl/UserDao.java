package ssh.daoImpl;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import ssh.dao.BaseDao;

public class UserDao extends HibernateDaoSupport implements BaseDao {
	//private SessionFactory sessionFactory;
	@Override
	public void saveObject(Object obj) throws HibernateException {
		getHibernateTemplate().save(obj);
	}

}
