package qwe;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Items {
	@Id
	@GeneratedValue(strategy=GenerationType.TABLE)
	private Integer id;
	private String iName;
	private Integer price;
	private Integer quantity;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getiName() {
		return iName;
	}
	public void setiName(String iName) {
		this.iName = iName;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	
	public Items() {
		super();
	}
	public Items(Integer id, String iName, Integer price, Integer quantity, String mDate, String eDate) {
		super();
		this.id = id;
		this.iName = iName;
		this.price = price;
		this.quantity = quantity;
	}
	
	
}
