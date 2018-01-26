package com.ttcs.command.society;






import java.io.Serializable;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.ttcs.commons.CommandInterface;
import com.ttcs.commons.pojo.Bean;
import com.ttcs.commons.pojo.society.CustomerDetailsServiceBean;
import com.ttcs.dao.entities.CustomerDetails;
import com.ttcs.dao.society.CustomerDetailsDao;

// TODO: Auto-generated Javadoc
@SuppressWarnings("unchecked")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class CustomerDetailsServiceCommand implements CommandInterface {

	
	private CustomerDetailsDao customerDetailsDao;
	/**
	 * (non-Javadoc).
	 * 
	 * @param data the data
	 * 
	 * @return the serializable
	 * 
	 * @throws Throwable the throwable
	 * 
	 * @see bgc.gen.commons.CommandInterface#execute(bgc.gen.commons.fdt.Bean)
	 */
	@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
	public Serializable execute(Bean data) throws Throwable {
		
		
		CustomerDetailsServiceBean bean = (CustomerDetailsServiceBean)data;
		
		String function = bean.getFunction();
		
		CustomerDetails customerDetails = new CustomerDetails();
		
		try {
			
			BeanUtils.copyProperties(bean,customerDetails);
			
			
			System.out.println("function :: "+function);
			if("A".equals(function) || "U".equals(function))
			{
				customerDetails = (CustomerDetails)customerDetailsDao.saveCustomerDetails(customerDetails);
				
			}else if("D".equals(function))
			{
				customerDetailsDao.deleteCustomerDetails(customerDetails);
				
			}else if("R".equals(function))
			{
				
				List<CustomerDetails> resut= (List<CustomerDetails>)customerDetailsDao.readCustomerDetails(bean.getCustId());
				
				
				if(resut !=null && resut.size()>0)
				{
					customerDetails = resut.get(0);
					
					BeanUtils.copyProperties(customerDetails, bean);
					
					
					
				}
				
			}
	
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
		
		
	}
	public CustomerDetailsDao getCustomerDetailsDao() {
		return customerDetailsDao;
	}
	public void setCustomerDetailsDao(CustomerDetailsDao customerDetailsDao) {
		this.customerDetailsDao = customerDetailsDao;
	}

	

	
	

	
}
