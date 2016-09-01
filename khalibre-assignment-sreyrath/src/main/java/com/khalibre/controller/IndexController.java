package com.khalibre.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.khalibre.dto.Repository;

@Controller
public class IndexController {
	
	@Autowired
	RestTemplate restTemplate;
	
	@RequestMapping(value = "/search" , method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public String getRepositoryList(@RequestParam(value= "q", required = true) String q,
									@RequestParam(value= "sort", required = false) String sort,
									@RequestParam(value= "order", required = false) String order,
									Model model) {
		
		String keyword = "liferay-portal";
		String stars = "stars";
		String desc = "desc";
		String url = "https://api.github.com/search/repositories?q={keyword}&sort={stars}&order={desc}";
		
		Repository result = restTemplate.getForObject(url, Repository.class, keyword, stars, desc);
		
		model.addAttribute("repo", result);
		return "index";
	}
	
}
