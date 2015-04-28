package com.webapp.controller;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webapp.model.User;

@Controller
@RequestMapping("/tour")
public class JoinController {
	
	static Log log = LogFactory.getLog(JoinController.class);
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join(){
		log.info("###############");
		log.info("join()...");
		log.info("###############");
		
		return "join/joinform";
	}
	
	@Autowired
	DataSource dataSource;
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(User user, HttpSession session) {
		log.info("#########################");
		log.info("login() POST...");
		log.info("id = " + user.getId());
		log.info("password = " + user.getPassword());
		log.info("name = " + user.getName());
		log.info("email = " + user.getEmail());
		log.info("#########################");
		
		JdbcTemplate template = new JdbcTemplate(dataSource);
		
		String sql = "insert into member " + 
					 " (id, password, name, email) " + 
					 "values " + 
					 " (?, ?, ?, ?)";
		
		try {
			template.update(sql, user.getId(), user.getPassword(), user.getName(), user.getEmail());

		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return "join/success";
	}
}

