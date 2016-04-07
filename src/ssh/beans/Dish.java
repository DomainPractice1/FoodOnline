package ssh.beans;


import java.util.HashSet;
import java.util.Set;

/**
 * Affairsort entity. @author MyEclipse Persistence Tools
 */

public class Dish implements java.io.Serializable {

	// Fields

	private int meishiId;
	private String name;
	private int price;
	private String description;

	// Constructors

	/** default constructor */
	public Dish() {
	}

	/** minimal constructor */
	public Dish(String name) {
		this.name = name;
	}

	public int getMeishiId() {
		return meishiId;
	}

	public void setMeishiId(int meishiId) {
		this.meishiId = meishiId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


}