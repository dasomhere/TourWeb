package com.webapp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.dao.DataRetrievalFailureException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.datasource.DataSourceUtils;

import com.webapp.dao.UserDao;
import com.webapp.model.User;

public class MyUserDao implements UserDao {
	
	static Log log = LogFactory.getLog(MyUserDao.class);


	@Override
	public User selectByUserid(String id, String pwd) {
		
		
		return null;
	}
	
	
	
}
