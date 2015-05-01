package com.webapp.controller;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.webapp.model.LocalApi;

@Controller
@RequestMapping("/local")
public class LocalController {
		static Log log = LogFactory.getLog(TourController.class);
	
	@RequestMapping(value="/local", method=RequestMethod.GET)
	@ResponseBody
	public List<LocalApi> tour(){
		log.info("###############");
		log.info("asdfdsf");
		log.info("###############");
		List<LocalApi> list = null;
		
		
		return list;
	}
}

