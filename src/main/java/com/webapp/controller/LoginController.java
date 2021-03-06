package com.webapp.controller;


import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webapp.model.LoginResult;
import com.webapp.model.User;

@Controller
@RequestMapping("/login")
public class LoginController {
		static Log log = LogFactory.getLog(TourController.class);

	@Autowired
	DataSource ds;
	
	@ResponseBody
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public LoginResult login(@RequestBody User user, HttpSession session) {
		log.info("###########################");
		log.info("### login POST...");
		log.info("id=" + user.getId());
		log.info("password=" + user.getPassword());
		log.info("###########################");
		
		JdbcTemplate template = new JdbcTemplate(ds);
		String sql = "select count(*) from member where id=? and password=?";
		int n = template.queryForInt(sql, new Object[]{user.getId(), user.getPassword()});
		LoginResult loginResult = new LoginResult();
		if(n == 1) {
			session.setAttribute("user", user);
			loginResult.setStatus(true);
			loginResult.setLoginStatus(true);
		} else {
			loginResult.setStatus(false);
		}
		loginResult.setUser(user);
		return loginResult;
		
	}
	
	@ResponseBody
	@RequestMapping(value="/logincheck", method=RequestMethod.GET)
	public LoginResult logincheck(HttpSession session) {
		
		User user = (User)session.getAttribute("user");
		
		LoginResult loginResult = new LoginResult();
		if (user == null)
			loginResult.setStatus(false);
		else
			loginResult.setStatus(true);
		
		loginResult.setUser(user);
		
		return loginResult;
	}
	
	@ResponseBody
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public LoginResult logout(HttpSession session) {
		
		session.invalidate();
		
		LoginResult loginResult = new LoginResult();
		loginResult.setStatus(true);
		loginResult.setLoginStatus(false);
		
		return loginResult;
	}
	
}


