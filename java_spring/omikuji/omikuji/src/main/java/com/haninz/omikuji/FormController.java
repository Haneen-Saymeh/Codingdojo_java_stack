package com.haninz.omikuji;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class FormController {
	@RequestMapping("")
	public String index1() {
		return "form.jsp";
	}
	
	
	@RequestMapping(value="/process", method=RequestMethod.POST)
	   public String index2(
			   @RequestParam(value="number") String number,
			   @RequestParam(value="city") String city,
			   @RequestParam(value="person") String person,
			   @RequestParam(value="hoppy") String hoppy,
			   @RequestParam(value="thing") String thing,
			   @RequestParam(value="sthnice") String sthnice, HttpSession session) {
		session.setAttribute("numberx", number);
		session.setAttribute("cityx", city);
		session.setAttribute("personx", person);
		session.setAttribute("hoppyx", hoppy);
		session.setAttribute("thingx", thing);
		session.setAttribute("sthx", sthnice);
		  return "redirect:/omikuji/show";
			}

   @RequestMapping("/show")
   public String index3() {
			return "result.jsp";
		}
}
