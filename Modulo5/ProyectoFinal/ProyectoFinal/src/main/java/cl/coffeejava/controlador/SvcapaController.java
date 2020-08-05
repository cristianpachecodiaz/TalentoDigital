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

import cl.coffeejava.modelo.Svcapa;
import cl.coffeejava.servicio.SvcapaService;

@Controller
public class SvcapaController {
	@Autowired
	SvcapaService svcapaService;
	
	
	
		@RequestMapping("/listaSvcapa")
		 	public ModelAndView home() { 
			 List<Svcapa> listSvcapa = svcapaService.listAll(); 
			 ModelAndView mav = new ModelAndView("listadoSvcapa"); 
			 mav.addObject("listSvcapa", listSvcapa);
			 return mav; 
		 }
		
		  		
		@RequestMapping("/nuevoSvcapa") 
			public String newSvcapaForm(Map<String, Object> model) { 
			 Svcapa svcapa = new Svcapa(); 
			 model.put("svcapa", svcapa);
			 return "formSvcapa"; 
		 	}
			  
		@RequestMapping(value ="/saveFormSvcapa", method = RequestMethod.POST) 
			public String saveformSvcapa(@ModelAttribute("svcapa") Svcapa svcapa) {
			  svcapaService.save(svcapa); 
			  return "redirect:/listaSvcapa"; 
			}
			  
		@RequestMapping(value ="/saveSvcapa", method = RequestMethod.POST) 
		    public String saveSvcapa(@ModelAttribute("svcapa") Svcapa svcapa) { 
				svcapaService.save(svcapa);
				return "redirect:/listaSvcapa"; 
			}
			  
		@RequestMapping("/editSvcapa") 
			public ModelAndView editSvcapaForm(@RequestParam int id) { 
				ModelAndView mav = new ModelAndView("editFormSvcapa"); 
				Svcapa svcapa = svcapaService.get(id);
				mav.addObject("svcapa", svcapa);
				return mav; 
			}
			  
		@RequestMapping("/deleteSvcapa") 
			public String deleteSvcapaForm(@RequestParam int id) { 
				svcapaService.delete(id); 
				return "redirect:/listaSvcapa"; 
			}
			  
		@RequestMapping("/searchSvcapa") 
		   public ModelAndView search(@RequestParam String keyword) { 
			  List<Svcapa> result = svcapaService.search(keyword);
			  ModelAndView mav = new ModelAndView("searchSvcapa"); 
			  mav.addObject("result", result); 
			  return mav; 
		  }	 
			   
	 
	
}

