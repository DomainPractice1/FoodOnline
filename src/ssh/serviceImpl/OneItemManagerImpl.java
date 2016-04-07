package ssh.serviceImpl;

import org.hibernate.HibernateException;
import org.springframework.beans.BeanUtils;

import com.opensymphony.xwork2.ActionContext;

import ssh.beans.OneItem;
import ssh.beans.User;
import ssh.dao.BaseDao;
import ssh.forms.OneItemForm;
import ssh.forms.UserForm;
import ssh.service.OneItemManager;

public class OneItemManagerImpl implements OneItemManager{
	private BaseDao dao;

	public void setDao(BaseDao dao) {
		this.dao = dao;
	}
	@Override
	public void regOneItem(OneItemForm oneItemForm) throws HibernateException {
		OneItem oneItem = new OneItem();
		BeanUtils.copyProperties(oneItemForm, oneItem);
		oneItem.setUsername((String)ActionContext.getContext().getSession().get("LoginUser"));
		dao.saveObject(oneItem);
	}
}
