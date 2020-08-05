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

import cl.coffeejava.modelo.Svvisi;
import cl.coffeejava.servicio.SvvisiService;

@Controller
public class SvvisiController {
	@Autowired
	SvvisiService svvisiService;
	

	@RequestMapping("/listaSvvisi")
	 	public ModelAndView home() { 
		 List<Svvisi> listSvvisi = svvisiService.listAll(); 
		 ModelAndView mav = new ModelAndView("listadoSvvisi"); 
		 mav.addObject("listSvvisi", listSvvisi);
		 return mav; 
	 }
	
	  		
	@RequestMapping("/nuevoSvvisi") 
		public String newSvvisiForm(Map<String, Object> model) { 
		 Svvisi svvisi = new Svvisi(); 
		 model.put("svvisi", svvisi);
		 return "formSvvisi"; 
	 	}
		  
	@RequestMapping(value ="/saveFormSvvisi", method = RequestMethod.POST) 
		public String saveformSvvisi(@ModelAttribute("svvisi") Svvisi svvisi) {
		  svvisiService.save(svvisi); 
		  return "redirect:/listaSvvisi"; 
		}
		  
	@RequestMapping(value ="/saveSvvisi", method = RequestMethod.POST) 
	    public String saveSvvisi(@ModelAttribute("svvisi") Svvisi svvisi) { 
			svvisiService.save(svvisi);
			return "redirect:/listaSvvisi"; 
		}
		  
	@RequestMapping("/editSvvisi") 
		public ModelAndView editSvvisiForm(@RequestParam int id) { 
			ModelAndView mav = new ModelAndView("editFormSvvisi"); 
			Svvisi svvisi = svvisiService.get(id);
			mav.addObject("svvisi", svvisi);
			return mav; 
		}
		  
	@RequestMapping("/deleteSvvisi") 
		public String deleteSvvisiForm(@RequestParam int id) { 
			svvisiService.delete(id); 
			return "redirect:/listaSvvisi"; 
		}
		  
	@RequestMapping("/searchSvvisi") 
	   public ModelAndView search(@RequestParam String keyword) { 
		  List<Svvisi> result = svvisiService.search(keyword);
		  ModelAndView mav = new ModelAndView("searchSvvisi"); 
		  mav.addObject("result", result); 
		  return mav; 
	  }	 
		   
}
