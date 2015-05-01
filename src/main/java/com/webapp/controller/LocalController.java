package com.webapp.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.webapp.model.LocalApi;

@Controller
@RequestMapping("/local")
public class LocalController {
		static Log log = LogFactory.getLog(TourController.class);
	
	@RequestMapping(value="local", method=RequestMethod.GET)
	@ResponseBody
	public List<LocalApi> local() throws IOException, ParseException{
		log.info("###############");
		log.info("asdfdsf");
		log.info("###############");
		List<LocalApi> list = null;
		
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode?numOfRows=10&pageNo=1&MobileOS=AND&MobileApp=myxxx&_type=json&ServiceKey=";
		String key = "sA7tgy37XyQzBU2fPZpZw%2BGKNlR0BPdgP2RhAvNrw4ls2so%2F%2BgeLDAT8AHJO6CacIlHvKIfubhwPjiDXpy%2B7%2Fw%3D%3D";
		String seoul = "&areaCode=1&numOfRows=20&pageNo=1&MobileOS=ETC&MobileApp=AppTesting";
		
		URL get = new URL(url+key+seoul);
		InputStream in = get.openStream();

		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject) parser.parse(new InputStreamReader(in));
		
		JSONObject response = (JSONObject) jsonObject.get("response");
		JSONObject header = (JSONObject) response.get("header");
		
		JSONObject body = (JSONObject) response.get("body");
		JSONObject items = (JSONObject) body.get("items");
		JSONArray item = (JSONArray) items.get("item");
		
		Iterator<JSONObject> iterator = item.iterator();
		while (iterator.hasNext()) {
			String name = (String) iterator.next().get("name");
			System.out.println(name);
		}
		
		
		return list;
	}
}

