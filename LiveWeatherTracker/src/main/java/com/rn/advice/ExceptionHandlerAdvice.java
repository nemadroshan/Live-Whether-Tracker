package com.rn.advice;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionHandlerAdvice {
	@ExceptionHandler(Exception.class)
	public ModelAndView globalExceptionHandler(Exception ex) {
		if(ex.getMessage().contains("404"))
		return new ModelAndView("global_page", "errorMsg", " Error 404 : Unable to find city");
		else 
			return new ModelAndView("global_page", "errorMsg", "Error 500 : Unable to connect Server");
	}
}
