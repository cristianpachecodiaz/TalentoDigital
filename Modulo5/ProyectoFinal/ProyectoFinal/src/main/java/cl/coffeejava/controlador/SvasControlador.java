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

import cl.coffeejava.modelo.Svas;
import cl.coffeejava.servicio.SvasService;

@Controller
public class SvasControlador {
	@Autowired
	SvasService svasService;
	
	
	
		@RequestMapping("/listaSvas")
		 	public ModelAndView home() { 
			 List<Svas> listSvas = svasService.listAll(); 
			 ModelAndView mav = new ModelAndView("listadoSvas"); 
			 mav.addObject("listSvas", listSvas);
			 return mav; 
		 }
				  		
		@RequestMapping("/nuevoSvas") 
			public String newSvasForm(Map<String, Object> model) { 
			 Svas svas = new Svas(); 
			 model.put("svas", svas);
			 return "formSvas"; 
		 	}
		
			  
		@RequestMapping(value ="/saveFormSvas", method = RequestMethod.POST) 
			public String saveformSvas(@ModelAttribute("svas") Svas svas) {
			  svasService.save(svas); 
			  return "redirect:/listaSvas"; 
			}
		
		@RequestMapping("/nuevoSvas1") 
			public String newSvasForm1(Map<String, Object> model) { 
			 Svas svas = new Svas(); 
			 model.put("svas", svas);
			 return "formSvasC"; 
	 	}
	
		
		@RequestMapping(value ="/saveFormSvas1", method = RequestMethod.POST) 
		public String saveformSvas1(@ModelAttribute("svas") Svas svas) {
		  svasService.save(svas); 
		  return "redirect:/indexCli"; 
		}
		
			  
		@RequestMapping(value ="/saveSvas", method = RequestMethod.POST) 
		    public String saveSvas(@ModelAttribute("svas") Svas svas) { 
				svasService.save(svas);
				return "redirect:/listaSvas"; 
			}
			  
		@RequestMapping("/editSvas") 
			public ModelAndView editSvasForm(@RequestParam int id) { 
				ModelAndView mav = new ModelAndView("editFormSvas"); 
				Svas svas = svasService.get(id);
				mav.addObject("svas", svas);
				return mav; 
			}
			  
		@RequestMapping("/deleteSvas") 
			public String deleteSvasForm(@RequestParam int id) { 
				svasService.delete(id); 
				return "redirect:/listaSvas"; 
			}
			  
		@RequestMapping("/searchSvas") 
		   public ModelAndView search(@RequestParam String keyword) { 
			  List<Svas> result = svasService.search(keyword);
			  ModelAndView mav = new ModelAndView("searchSvas"); 
			  mav.addObject("result", result); 
			  return mav; 
		  }	 
			   
	 
	
}

