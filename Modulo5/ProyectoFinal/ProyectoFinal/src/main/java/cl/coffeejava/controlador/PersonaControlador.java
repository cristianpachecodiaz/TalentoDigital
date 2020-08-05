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


import cl.coffeejava.modelo.Persona;
import cl.coffeejava.servicio.PersonaService;

@Controller
public class PersonaControlador {
	
	@Autowired
	private PersonaService personaService;
	
	@RequestMapping("/listaPersona")
	public ModelAndView home() {
		List<Persona> listaPersona = personaService.listAll();
		ModelAndView mav = new ModelAndView("listadoPersona");
		mav.addObject("listaPersona", listaPersona);
		return mav;		
	}
	
	
	@RequestMapping("/nuevoPersona")
	public String newAccForm(Map<String, Object> model) {
		Persona per = new Persona();
		model.put("per", per);
		return "formPersona";		
	}
	
	@RequestMapping(value ="/saveFormPer", method = RequestMethod.POST)
	public String saveformPro(@ModelAttribute("per") Persona per) {
			
		personaService.save(per);
		return "redirect:/listaPersona";
	}
	
	@RequestMapping(value ="/savePersona", method = RequestMethod.POST)
	public String savePersona(@ModelAttribute("per") Persona per) {
		
		personaService.save(per);
		return "redirect:/listaPersona";
	}
	
	
	@RequestMapping("/editPersona")
	public ModelAndView editAccForm(@RequestParam String rutper) {
		ModelAndView mav = new ModelAndView("editFormPer");
		Persona per = personaService.get(rutper);	
		mav.addObject("per",per );
		return mav;		
	}
	
	@RequestMapping("/deletePersona")
	public String deleteProForm(@RequestParam String rutper) {
		personaService.delete(rutper);
		return "redirect:/listaPersona";		
	}
	
	
	@RequestMapping("/searchPer")
	public ModelAndView search(@RequestParam String keyword) {
		List<Persona> result = personaService.search(keyword);
		ModelAndView mav = new ModelAndView("searchResPer");
		mav.addObject("result", result);
		return mav;
	} 
		
	
}
