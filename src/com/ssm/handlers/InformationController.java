package com.ssm.handlers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.beans.Information;
import com.ssm.service.IInformationService;

@Controller
public class InformationController {
	
	@Autowired
	@Qualifier("informationService")
	private IInformationService informationService;
	
	@RequestMapping("/index.do")
	public String queryAllInfo(Model model){
		ArrayList<Information> list = new ArrayList<Information>();
		list = informationService.queryAllInfo();
		model.addAttribute("list", list);
		return "/index.jsp";
	}
	
	@RequestMapping("/addInformation.do")
	public String addInformation(String username, String context){
		Date date = new Date();
		Information info = new Information();
		info.setUsername(username);
		info.setContext(context);
		info.setTime(date);
		informationService.addInformation(info);
		return "/index.do";
	}
}
