package cl.coffeejava.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	
	
	@RequestMapping("/")
	public ModelAndView home() {
	
		ModelAndView mav = new ModelAndView("index");		
		return mav;		
	}
	
	@RequestMapping("/indexAdm")
	public ModelAndView home1() {
	
		ModelAndView mav = new ModelAndView("indexAdm");		
		return mav;		
	}
	
	@RequestMapping("/indexCli")
	public ModelAndView home2() {
	
		ModelAndView mav = new ModelAndView("indexCli");		
		return mav;		
	}
	
	@RequestMapping("/indexPro")
	public ModelAndView home3() {
	
		ModelAndView mav = new ModelAndView("indexPro");		
		return mav;		
	}
	
		
	
}
