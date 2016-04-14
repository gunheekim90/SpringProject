package model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Item {
	
	private Long itemId;
	private String itemUser;
	private String itemUserEmail;
	private Date itemRegisterDate;
	private String itemTheme;
	private String itemInfo;
	private String itemSize;
	private String itemStyle;
	private String itemImage;
	private String itemPrice;
	//변수명 처음 시작 할때 무조건 소문자!!
	/*private MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}*/

	public Item(String ItemUser,String ItemUserEmail,Date ItemRegisterDate,
			String ItemTheme,String ItemInfo, String ItemSize, String ItemStyle,String ItemImage,
			String ItemPrice)
	{
		this.itemUser = ItemUser;
		this.itemUserEmail = ItemUserEmail;
		this.itemRegisterDate = ItemRegisterDate;
		this.itemTheme = ItemTheme;
		this.itemInfo = ItemInfo;
		this.itemSize = ItemSize;
		this.itemStyle = ItemStyle;
		this.itemImage = ItemImage;
		this.itemPrice = ItemPrice;
	}

	public Long getItemId() {
		return itemId;
	}
	public void setItemId(Long itemId) {
		this.itemId = itemId;
	}
	public String getItemUser() {
		return itemUser;
	}
	public void setItemUser(String itemUser) {
		this.itemUser = itemUser;
	}
	public String getItemUserEmail() {
		return itemUserEmail;
	}
	public void setItemUserEmail(String itemUserEmail) {
		this.itemUserEmail = itemUserEmail;
	}
	public Date getItemRegisterDate() {
		return itemRegisterDate;
	}
	public void setItemRegisterDate(Date itemRegisterDate) {
		this.itemRegisterDate = itemRegisterDate;
	}
	public String getItemTheme() {
		return itemTheme;
	}
	public void setItemTheme(String itemTheme) {
		this.itemTheme = itemTheme;
	}
	public String getItemInfo() {
		return itemInfo;
	}
	public void setItemInfo(String itemInfo) {
		this.itemInfo = itemInfo;
	}
	public String getItemSize() {
		return itemSize;
	}
	public void setItemSize(String itemSize) {
		this.itemSize = itemSize;
	}
	public String getItemStyle() {
		return itemStyle;
	}
	public void setItemStyle(String itemStyle) {
		this.itemStyle = itemStyle;
	}
	public String getItemImage() {
		return itemImage;
	}
	public void setItemImage(String itemImage) {
		this.itemImage = itemImage;
	}
	public String getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}
}
