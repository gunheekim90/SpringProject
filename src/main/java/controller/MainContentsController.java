package controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Item;
import model.ItemDao;
import model.ItemRegisterRequest;
import model.Member;
import model.MemberDao;

@Controller
public class MainContentsController {

	private MemberDao memberDao;
	private ItemDao itemDao;
	
	public void setItemDao(ItemDao itemDao)	{
		this.itemDao = itemDao;
	}
	
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String PHome() {
		
		return "/contents/contetns01";
	}
	@RequestMapping(method = RequestMethod.GET)
	public String GHome(Model model) {
		
		//List<Item> item = itemDao.selectAll();
		//String user = item.get(0).getItemUser();
		//model.addAttribute("list",item);
		return "/contents/contents01";
	}
	
	@RequestMapping("/mypage/Account/{id}")
	public String detail(@PathVariable("id") Long memId, Model model) {
		Member member = memberDao.selectById(memId);
		model.addAttribute("member", member);
		return "/mypage/Account";
	}
	
	@RequestMapping( value = "/contents/index", method = RequestMethod.GET )
	public String index() {
		
		return "/contents/index";
	}
	
	@RequestMapping("/upload")
	public String upload(Model model) {

		model.addAttribute("itemRegisterRequest",new ItemRegisterRequest());
		return "/upload/upload_content";
	}


}
