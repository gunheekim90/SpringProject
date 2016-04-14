package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Member;
import model.MemberDao;

@Controller
public class MemberListController {

	private MemberDao memberDao;

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	@RequestMapping("/member/list")
	public String list(
			@ModelAttribute("cmd") ListCommand listCommand,
			Errors errors, Model model) {
		if (errors.hasErrors()) {
			return "member/memberList";
		}
		//if (listCommand.getFrom() != null && listCommand.getTo() != null) {
		//	List<Member> members = memberDao.selectByRegdate(
		//			listCommand.getFrom(), listCommand.getTo());
		List<Member> members = memberDao.selectAll();	
		model.addAttribute("members", members);
		
		return "member/memberList";
	}
}
