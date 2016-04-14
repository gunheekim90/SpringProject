package controller;

import java.util.regex.Matcher;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import model.ItemRegisterRequest;
import model.RegisterRequest;

public class ItemRegisterRequestValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		ItemRegisterRequest itemregReq = (ItemRegisterRequest) target;
		if (itemregReq.getItemInfo() == null ) {
			errors.rejectValue("ItemInfo", "requiredItem");
		}
		
		ValidationUtils.rejectIfEmpty(errors, "ItemTheme", "requiredItem");
		ValidationUtils.rejectIfEmpty(errors, "ItemSize", "requiredItem");
		ValidationUtils.rejectIfEmpty(errors, "ItemPrice", "requiredItem");
		ValidationUtils.rejectIfEmpty(errors, "ItemStyle", "requiredItem");
		ValidationUtils.rejectIfEmpty(errors, "ItemInfo", "requiredItem");
	}

}
