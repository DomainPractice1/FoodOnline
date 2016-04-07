package ssh.serviceImpl;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import java.util.List;
import ssh.beans.User;
import ssh.dao.BaseDao;
import ssh.dao.ShowUserDao;
import ssh.forms.UserForm;
import ssh.service.UserManager;

public class UserManagerImpl implements UserManager {

	private BaseDao dao;
	private ShowUserDao showUserDao;
	public void setDao(BaseDao dao) {
		this.dao = dao;
	}

	@Override
	public void regUser(UserForm userForm) throws HibernateException {
		User user = new User();
		BeanUtils.copyProperties(userForm, user);
		dao.saveObject(user);
	}

	@Override
	public boolean logUser(UserForm userForm) {
		User user = new User();
		BeanUtils.copyProperties(userForm, user);
		List<User> list = showUserDao.findAll(user);
		return list.size()>0;
	}

	public ShowUserDao getShowUserDao() {
		return showUserDao;
	}

	public void setShowUserDao(ShowUserDao showUserDao) {
		this.showUserDao = showUserDao;
	}

	public BaseDao getDao() {
		return dao;
	}

}
