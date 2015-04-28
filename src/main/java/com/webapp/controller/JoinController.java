package com.webapp.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/tour")
public class JoinController {
		static Log log = LogFactory.getLog(TourController.class);
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String tour(){
		log.info("###############");
		log.info("asdfdsf");
		log.info("###############");
		
		return "join/joinform";
	}
}

