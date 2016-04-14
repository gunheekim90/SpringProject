package controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.AuthInfo;
import model.AuthService;
import model.IdPasswordNotMatchingException;
import model.Item;
import model.ItemDao;
import model.Member;
import model.MemberDao;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	private AuthService authService;
	private ItemDao itemDao;


	public void setAuthService(AuthService authService) {
		this.authService = authService;
	}
	
	public void setItemDao(ItemDao itemDao)
	{
		this.itemDao = itemDao;
	}

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView form(LoginCommand loginCommand,
			@CookieValue(value = "REMEMBER", required = false) Cookie rememberCookie) {
		if (rememberCookie != null) {
			loginCommand.setEmail(rememberCookie.getValue());
			loginCommand.setRememberEmail(true);
		}
		return new ModelAndView("login/Login");
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView submit(
			LoginCommand loginCommand, Errors errors, HttpSession session,
			HttpServletResponse response, ModelAndView model) {
		new LoginCommandValidator().validate(loginCommand, errors);
		if (errors.hasErrors()) {
			return new ModelAndView("login/Login");
		}
		try {
			AuthInfo authInfo = authService.authenticate(
					loginCommand.getEmail(),
					loginCommand.getPassword());

			session.setAttribute("authInfo", authInfo);
			
			Cookie rememberCookie = 
					new Cookie("REMEMBER", loginCommand.getEmail());
			
			rememberCookie.setPath("/");
			if (loginCommand.isRememberEmail()) {
				rememberCookie.setMaxAge(60 * 60 * 24 * 30);
			} else {
				rememberCookie.setMaxAge(0);
			}
			response.addCookie(rememberCookie);
			try{
				//List<Item> item = itemDao.selectAll();
				//model.addObject("list",item);
				model.setViewName("contents/index");
			}
			catch(IndexOutOfBoundsException e)
			{
				return model;
			}
			
			return model;
		} catch (IdPasswordNotMatchingException e) {
			errors.reject("idPasswordNotMatching");
			return new ModelAndView("login/Login");
		}
	}
}
