package com.ttcs.web.controller.society;


import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;

import com.ttcs.commons.exception.TtcsException;
import com.ttcs.commons.pojo.society.CustomerDetailsServiceBean;
import com.ttcs.web.command.society.CustomerDetailsCommand;
import com.ttcs.web.controller.AbstractTtcsCommandController;



// TODO: Auto-generated Javadoc
/**
 * The Class PrintManagementController.
 */
@SuppressWarnings("unchecked")
public class NewCustomerCommandController extends AbstractTtcsCommandController {
 	
	 

	public ModelAndView handleInit(HttpServletRequest request,
			HttpServletResponse response, Object inputCommand, BindException be)
			throws Throwable {
		CustomerDetailsCommand customerDetailsCommand = (CustomerDetailsCommand) inputCommand;
		
		
		
		return  doNormal(customerDetailsCommand, request, be, response);
		
		
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
			CustomerDetailsCommand newCustomerDetailsCommand,
			HttpServletRequest req, BindException be, HttpServletResponse response) throws TtcsException,  InvocationTargetException, Throwable  {
		ModelAndView modelAndView = null;
		
		modelAndView = new ModelAndView(this.getInputFormView());
		
		String strBtnPressed = (String)req.getParameter("btnPressed");
		
		
		if(StringUtils.isNotEmpty(strBtnPressed) )
		{
			CustomerDetailsServiceBean newCustomerServiceBean = new CustomerDetailsServiceBean();
			
			try {
				PropertyUtils.copyProperties(newCustomerServiceBean, newCustomerDetailsCommand);
				newCustomerServiceBean.setFunction("A");
				
				newCustomerServiceBean = (CustomerDetailsServiceBean) getCommandExecutor().execute(newCustomerServiceBean);
				
				PropertyUtils.copyProperties(newCustomerDetailsCommand, newCustomerServiceBean);
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		modelAndView.addObject("customerDetailsCommand",	newCustomerDetailsCommand);	
		
		
		return modelAndView;
	}

	
	
	public ModelAndView handleValidForm(HttpServletRequest req,
			HttpServletResponse res, Object inputCommand, BindException be)
			throws Throwable {
		return handleInit(req, res, inputCommand, be);
	}
	

	
}
