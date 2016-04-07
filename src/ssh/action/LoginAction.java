package ssh.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import ssh.forms.UserForm;
import ssh.service.UserManager;

public class LoginAction extends ActionSupport  {
	private UserForm user;
	private UserManager userManager;
	public UserForm getUser() {
		return user;
	}
	public void setUser(UserForm user) {
		this.user = user;
	}
	public UserManager getUserManager() {
		return userManager;
	}
	public void setUserManager(UserManager userManager) {
		this.userManager = userManager;
	}
	
	public String execute() {
		try {
			if(userManager.logUser(user)){
				HttpServletRequest request=ServletActionContext.getRequest();  
				Map<String, Object> session = ActionContext.getContext().getSession();
				session.put("LoginUser", user.getUsername());
				System.out.println("已存入session:"+(String)session.get("LoginUser"));
				return SUCCESS;
			}else return ERROR;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
}
