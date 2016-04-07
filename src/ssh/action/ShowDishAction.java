package ssh.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import ssh.beans.Dish;
import ssh.service.ShowDishService;
import ssh.serviceImpl.ShowDishServiceImpl;

public class ShowDishAction extends ActionSupport{
	private List<Dish> dishList;
	private ShowDishService showDishService;

	public String execute(){
		dishList=showDishService.findAll();
		HttpServletRequest request=ServletActionContext.getRequest();   
		request.setAttribute("dishList", dishList);
		request.setAttribute("huangmenji","huangmenji");
		return SUCCESS;
	}

	public List<Dish> getDishList() {
		return dishList;
	}

	public void setDishList(List<Dish> dishList) {
		this.dishList = dishList;
	}

	public ShowDishService getShowDishService() {
		return showDishService;
	}

	public void setShowDishService(ShowDishService showDishService) {
		this.showDishService = showDishService;
	}
}
