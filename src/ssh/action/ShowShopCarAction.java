package ssh.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import ssh.beans.Dish;
import ssh.beans.ShopCar;
import ssh.service.ShowDishService;
import ssh.service.ShowShopCarService;
import ssh.serviceImpl.ShowDishServiceImpl;

public class ShowShopCarAction extends ActionSupport{
	private List<ShopCar> shopCarList;
	private ShowShopCarService showShopCarService;
	private ShowDishService showDishService;
	private List<Dish> dishList;
	class Info
	{
		Info(){}
		Info(Dish dish, ShopCar shopCar)
		{
			this.dish = dish;
			this.shopCar = shopCar;
		}
		public Dish getDish() {
			return dish;
		}
		public void setDish(Dish dish) {
			this.dish = dish;
		}
		public ShopCar getShopCar() {
			return shopCar;
		}
		public void setShopCar(ShopCar shopCar) {
			this.shopCar = shopCar;
		}
		private Dish dish;
		private ShopCar shopCar;
	}
	public Dish findInDishList(String id)
	{
		int ID = Integer.parseInt(id);
		for(Dish dish : dishList){
			if(dish.getMeishiId() == ID)
			{
				return dish;
			}
		}
		return new Dish();
	}
	
	public String execute(){
		
		HttpServletRequest request=ServletActionContext.getRequest();   
		String loginUser = (String)ActionContext.getContext().getSession().get("LoginUser");
		shopCarList=showShopCarService.findAll(loginUser);
		
		dishList = showDishService.findAll();
		List<Info> infoList = new ArrayList<Info>();
		for(ShopCar shopCar : shopCarList)
		{
			infoList.add( new Info(findInDishList(shopCar.getName()) , shopCar) );
		}
		request.setAttribute("shopCarList", shopCarList);
		request.setAttribute("infoList", infoList);
		return SUCCESS;
	}

	public List<ShopCar> getShopCarList() {
		return shopCarList;
	}

	public void setShopCarList(List<ShopCar> shopCarList) {
		this.shopCarList = shopCarList;
	}

	public ShowShopCarService getShowShopCarService() {
		return showShopCarService;
	}

	public void setShowShopCarService(ShowShopCarService showShopCarService) {
		this.showShopCarService = showShopCarService;
	}

	public ShowDishService getShowDishService() {
		return showDishService;
	}

	public void setShowDishService(ShowDishService showDishService) {
		this.showDishService = showDishService;
	}

	public List<Dish> getDishList() {
		return dishList;
	}

	public void setDishList(List<Dish> dishList) {
		this.dishList = dishList;
	}

}
