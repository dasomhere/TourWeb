package com.webapp.controller;


import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webapp.model.User;

@Controller
@RequestMapping("/tour")
public class LoginController {
		static Log log = LogFactory.getLog(TourController.class);

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String tour(){
			log.info("###############");
			log.info("login");
			log.info("###############");
			
			return "login/loginform";
	}
	
//	@RequestMapping(value="/login", method=RequestMethod.POST)
//	public String login(User user, HttpSession session){
//		log.info("######################");
//		log.info("login() POST..... ");
//		log.info("id= " + user.getId());
//		log.info("password = "+ user.getPassword());
//		log.info("######################");
//		 
//		if("webapp".equals(user.getId()) && "1234".equals(user.getPassword())) {
//	         session.setAttribute("user", user);
//	         return "login/loginsuccess";
//	         // Login Success
//	      } else {
//	         return "redirect:login";
//	         // Login Fail
//	      }
//	}
	

	@Autowired
	DataSource ds;
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(User user, String id, String password, HttpSession session){
		log.info("######################");
		log.info("login() POST..... ");
		log.info("id= " + id);
		log.info("password = "+ password);
		log.info("######################");
		
		JdbcTemplate template = new JdbcTemplate(ds);
		
		
		try{
			String sql = "select id,password from member where id=? and password=?";
			User u = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), id, password);
			return "login/loginsuccess";
		} catch(DataAccessException e){
			return "login/loginform";
		}
		
		
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.POST)
	public String logout(HttpSession session){
		
		session.invalidate();
		
		return "login/logoutsuccess";
	}
}


