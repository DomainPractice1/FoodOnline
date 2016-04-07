package ssh.action;

import com.opensymphony.xwork2.ActionSupport;

import ssh.forms.OneItemForm;
import ssh.service.OneItemManager;


public class PutOneItemToCar extends ActionSupport  {
	private OneItemForm oneItem;

	private OneItemManager oneItemManager;
	public String execute() {
		try {
			//System.out.println(userManager.toString());
			oneItemManager.regOneItem(oneItem);
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
	public OneItemForm getOneItem() 
	{
		return oneItem;
	}
	public void setOneItem(OneItemForm oneItem) 
	{
		this.oneItem = oneItem;
	}
	public OneItemManager getOneItemManager() 
	{
		return oneItemManager;
	}
	public void setOneItemManager(OneItemManager oneItemManager) 
	{
		this.oneItemManager = oneItemManager;
	}
}
