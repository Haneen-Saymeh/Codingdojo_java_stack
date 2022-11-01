package com.haninz.counter;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/haninz")
public class countercontroller {
	@RequestMapping("")
	public String index(HttpSession session) {
		if (session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
			}
			else {
				Integer Haninz = (Integer) session.getAttribute("count");
				Haninz++;
				session.setAttribute("count", Haninz);
				
			}
		return "welcome.jsp";
	}
	
	@RequestMapping("/counter")
	public String index2(HttpSession session, Model model) {
		model.addAttribute("counterof", session.getAttribute("count"));
		
		
		
		
		return "counter.jsp";
	}


}
