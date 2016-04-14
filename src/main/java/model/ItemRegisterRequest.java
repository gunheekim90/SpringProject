package model;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class ItemRegisterRequest {

	private String ItemUser;
	private String ItemUserEmail;
	private Date ItemRegisterDate;
	private String ItemTheme;
	private String ItemInfo;
	private String ItemSize;
	private String ItemStyle;
	private String ItemImage;
	private String ItemPrice;
	
	private MultipartFile file;
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}

	

	public void setItemUser(String ItemUser)
	{
		this.ItemUser = ItemUser;
	}
	public void setItemUserEmail(String ItemUserEmail)
	{
		this.ItemUserEmail = ItemUserEmail;
	}
	public void setItemRegisterDate(Date ItemRegisterDate)
	{
		this.ItemRegisterDate = ItemRegisterDate;
	}
	public void setItemTheme(String ItemTheme)
	{
		this.ItemTheme = ItemTheme;
	}
	public void setItemInfo(String ItemInfo)
	{
		this.ItemInfo = ItemInfo;
	}
	public void setItemSize(String ItemSize)
	{
		this.ItemSize = ItemSize;
	}
	public void setItemStyle(String ItemStyle)
	{
		this.ItemStyle = ItemStyle;
	}
	public void setItemImage(String ItemImage)
	{
		this.ItemImage = ItemImage;
	}
	public void setItemPrice(String ItemPrice)
	{
		this.ItemPrice = ItemPrice;
	}
	

	public String getItemUser()
	{
		return ItemUser;
	}
	public String getItemUserEmail()
	{
		return ItemUserEmail;
	}
	public Date getItemRegisterDate()
	{
		return ItemRegisterDate;
	}
	public String getItemTheme()
	{
		return ItemTheme;
	}
	public String getItemInfo()
	{
		return ItemInfo;
	}
	public String getItemSize()
	{
		return ItemSize;
	}
	public String getItemStyle()
	{
		return ItemStyle;
	}
	public String getItemImage()
	{
		return ItemImage;
	}
	public String getItemPrice()
	{
		return ItemPrice;
	}
}
