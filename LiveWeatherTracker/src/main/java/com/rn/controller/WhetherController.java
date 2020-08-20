package com.rn.controller;

import java.util.Iterator;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.rn.command.WhetherCommand;

@Controller
public class WhetherController {
	@Autowired
	private RestTemplate template;

	@Value("${weather.api.key}")
	private String api_key;
	
	@GetMapping("/report.htm")
	public String getReportPage(@ModelAttribute("watCmd") WhetherCommand cmd) {
		return "report";
	}

	@PostMapping("/report.htm")
	public String getWeatherdata(Map<String, Object> map, @ModelAttribute("watCmd") WhetherCommand cmd) {
		String city = cmd.getCity().trim();
		System.out.println("city :: " + city);
		String data = null;
		String url = "https://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=" + api_key;
		JSONParser parser = new JSONParser();
		JSONObject jsonObject = null;
		// -273.15
		ResponseEntity<String> any = template.exchange(url, HttpMethod.GET, null, String.class);
		data = any.getBody();
		System.out.println("..............................................................");
		System.out.println(data);

		try {
			jsonObject = (JSONObject) parser.parse(data);
			JSONObject main = (JSONObject) parser.parse(jsonObject.get("main").toString());

			cmd.setHumidity(main.get("humidity").toString());
			double temp = Double.parseDouble(main.get("temp").toString()) - 273.15;
			double min = Double.parseDouble(main.get("temp_min").toString()) - 273.15;
			double max = Double.parseDouble(main.get("temp_max").toString()) - 273.15;

			cmd.setTemp((int) Math.round(temp));
			cmd.setTemp_max((int) Math.round(max));
			cmd.setTemp_min((int) Math.round(min));
			
			JSONArray  jsonArray = (JSONArray) jsonObject.get("weather");
			Iterator i = jsonArray.iterator();
			while(i.hasNext()) {
				JSONObject object = (JSONObject) i.next();
			cmd.setDesc(object.get("description").toString());
			}
			map.put("cmd", cmd);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "report";
	}

	/*@ExceptionHandler(Exception.class)
	public String loadExceptionHandler(Exception exe) {
		return "error_page";
	}*/
	
	/*@ExceptionHandler(Exception.class)
	public ModelAndView  localExceptionHandler(Exception ex) {
		return new ModelAndView("error_page","errorMsg",ex.getMessage());
	}
	*/
}
