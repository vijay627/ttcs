package com.ttcs.web.controller.society;


import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;

import com.ttcs.commons.exception.TtcsException;
import com.ttcs.web.command.society.OfficeExpendatureAccountCommand;
import com.ttcs.web.controller.AbstractTtcsCommandController;



// TODO: Auto-generated Javadoc
/**
 * The Class PrintManagementController.
 */
@SuppressWarnings("unchecked")
public class OfficeExpendatureAccountCommandController extends AbstractTtcsCommandController {
 	
	 

	public ModelAndView handleInit(HttpServletRequest request,
			HttpServletResponse response, Object inputCommand, BindException be)
			throws Throwable {
		OfficeExpendatureAccountCommand officeExpendatureAccountCommand = (OfficeExpendatureAccountCommand) inputCommand;
		
		
		
		return  doNormal(officeExpendatureAccountCommand, request, be, response);
		
		
	}
	
	
	/**
	 * Do normal.
	 * 
	 * @param printManagementCommand the Print Management command
	 * @param req the req
	 * @param drawing the drawing
	 * @param be the be
	 * @param response the response
	 * 
	 * @return the model and view
	 * 
	 */
	private ModelAndView doNormal(
			OfficeExpendatureAccountCommand officeExpendatureAccountCommand,
			HttpServletRequest req, BindException be, HttpServletResponse response) throws TtcsException,  InvocationTargetException, Throwable  {
		ModelAndView modelAndView = null;
		
		
		
	
		modelAndView = new ModelAndView(this.getInputFormView());
		modelAndView.addObject("officeExpendatureAccountCommand",	officeExpendatureAccountCommand);	
		
		
		return modelAndView;
	}

	
	
	public ModelAndView handleValidForm(HttpServletRequest req,
			HttpServletResponse res, Object inputCommand, BindException be)
			throws Throwable {
		return handleInit(req, res, inputCommand, be);
	}
	

	
}
