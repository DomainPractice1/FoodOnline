package ssh.daoImpl;

import org.hibernate.HibernateException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import ssh.dao.BaseDao;

public class OneItemDao extends HibernateDaoSupport implements BaseDao {
	public void saveObject(Object obj) throws HibernateException {
		getHibernateTemplate().save(obj);
	}
}
