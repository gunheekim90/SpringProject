package model;

import java.util.Date;

import org.springframework.transaction.annotation.Transactional;

public class ItemRegisterService {
	
	private ItemDao itemDao;
	
	public ItemRegisterService(ItemDao itemDao)
	{
		this.itemDao=itemDao;
	}

	@Transactional
	public void regist(ItemRegisterRequest itemreq) {
		Item newItem = new Item(
				itemreq.getItemUser(), itemreq.getItemUserEmail(),new Date(),
				itemreq.getItemTheme(),itemreq.getItemInfo(),itemreq.getItemSize(),
				itemreq.getItemStyle(),itemreq.getItemImage(),itemreq.getItemPrice());
		
		itemDao.insert(newItem);
	}
}
