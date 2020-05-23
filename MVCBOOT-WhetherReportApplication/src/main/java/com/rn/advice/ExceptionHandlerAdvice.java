package com.rn.advice;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionHandlerAdvice {
	@ExceptionHandler(Exception.class)
	public ModelAndView globalExceptionHandler(Exception ex) {
		return new ModelAndView("global_page", "errorMsg", ex.getMessage());
	}
}
