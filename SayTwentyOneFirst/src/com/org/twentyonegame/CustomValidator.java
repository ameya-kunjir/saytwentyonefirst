package com.org.twentyonegame;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class CustomValidator implements Validator {

	@Override
	public boolean supports(Class clazz) {
		//just validate the Customer instances
		return Login.class.isAssignableFrom(clazz);

	}

	@Override
	public void validate(Object target, Errors errors)
	{
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "error.firstName" , "User Name is Required");
	}
}
