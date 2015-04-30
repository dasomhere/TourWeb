package com.webapp.controller;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webapp.model.LoginResult;
import com.webapp.model.User;

@Controller
@RequestMapping("/login")
public class LoginController {
		static Log log = LogFactory.getLog(TourController.class);

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginform(){
			log.info("###############");
			log.info("login");
			log.info("###############");
			
			return "login/loginform";
	}

	@Autowired
	DataSource ds;
	
//	@RequestMapping(value="/login", method=RequestMethod.POST)
//	public String login(User user, String id, String password, HttpSession session){
//		log.info("######################");
//		log.info("login() POST..... ");
//		log.info("id= " + id);
//		log.info("password = "+ password);
//		log.info("######################");
//		
//		JdbcTemplate template = new JdbcTemplate(ds);
//		
//		
//		try{
//			String sql = "select id,password from member where id=? and password=?";
//			User u = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), id, password);
//			session.setAttribute("id", true);
//			return "login/loginsuccess";
//		} catch(DataAccessException e){
//			return "login/loginform";
//		}
		
//	}
	@RequestMapping(value="login", method=RequestMethod.POST, headers="Accept=application/json")
	@ResponseBody
//	public LoginResult login(User user, String id, String password){
	public String login(User user, String id, String password){
		log.info("###########################");
		log.info("#############emp###########");
		log.info("###########################");
		
//		JdbcTemplate template = new JdbcTemplate(ds);
//		User u = null;
//		try{
//			String sql = "select id,password from member where id=? and password=?";
//			u = template.queryForObject(sql, new BeanPropertyRowMapper<User>(User.class), id, password);
//			return u;
//		} catch(EmptyResultDataAccessException e){
//			return u;
//		}
		LoginResult result = new LoginResult();
		result.setLogin(true);
		result.setMessage("로그인 성공");
		return "{login : true, message : '로그인 성공 ㅋㅋㅋ'}";
	}
	@RequestMapping(value="/logout", method=RequestMethod.POST)
	public String logout(HttpSession session){
		
		session.invalidate();
		
		return "login/logoutsuccess";
	}
}


