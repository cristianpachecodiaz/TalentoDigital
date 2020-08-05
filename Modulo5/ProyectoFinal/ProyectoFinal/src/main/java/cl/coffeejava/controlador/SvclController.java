package cl.coffeejava.controlador;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.coffeejava.modelo.Svcl;
import cl.coffeejava.servicio.SvclService;

@Controller
public class SvclController {
	
	@Autowired
	private SvclService svclService;
	
	@RequestMapping("/listadoCheck")
	public ModelAndView home() {
		List<Svcl> listaSvcl = svclService.listAll();
		ModelAndView mav = new ModelAndView("listadoCheck");
		mav.addObject("listaSvcl", listaSvcl);
		return mav;		
	}
	
	@RequestMapping("/nuevoSvcl")
	public String newSvclForm(Map<String, Object> model) {
		Svcl svcl = new Svcl();
		model.put("svcl", svcl);
		return "formSvcl";		
	}
	
	@RequestMapping(value ="/saveFormSvcl", method = RequestMethod.POST)
	public String saveformSvcl(@ModelAttribute("svcl") Svcl svcl) {
		   
		svclService.save(svcl);
		return "redirect:/listadoCheck";
	}
	
	@RequestMapping(value ="/saveSvcl", method = RequestMethod.POST)
	public String saveSvcl(@ModelAttribute("svcl") Svcl svcl) {
		   
		svclService.save(svcl);
		return "redirect:/listadoCheck";
	}
	
	@RequestMapping("/editSvcl")
	public ModelAndView editSvclForm(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("editFormSvcl");
		Svcl svcl = svclService.get(id);		
		mav.addObject("svcl",svcl );
		return mav;		
	}
	
	@RequestMapping("/deleteSvcl")
	public String deleteSvclForm(@RequestParam int id) {
		svclService.delete(id);
		return "redirect:/listadoCheck";		
	}
	
	@RequestMapping("/searchSvcl")
	public ModelAndView search(@RequestParam String keyword) {
		List<Svcl> result = svclService.search(keyword);
		ModelAndView mav = new ModelAndView("searchSvcl");
		mav.addObject("result", result);
		return mav;
	}
	

}
