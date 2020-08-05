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

import cl.coffeejava.modelo.Contrato;
import cl.coffeejava.servicio.ContratoService;

@Controller
public class ContratoController {

	@Autowired
	private ContratoService contratoService;
	
	@RequestMapping("/listaContrato")
	public ModelAndView home() {
		List<Contrato> listContrato = contratoService.listAll();
		ModelAndView mav = new ModelAndView("listadoContrato");
		mav.addObject("listContrato", listContrato);
		return mav;		
	}
	
	@RequestMapping("/nuevoContrato")
	public String newContratoForm(Map<String, Object> model) {
		Contrato con = new Contrato();
		model.put("con", con);
		return "formContrato";		
	}
	
	@RequestMapping(value ="/saveFormContrato", method = RequestMethod.POST)
	public String saveformContrato(@ModelAttribute("con") Contrato con) {
		 
		contratoService.save(con);
		return "redirect:/listaContrato";
	}
	

	@RequestMapping(value ="/saveContrato", method = RequestMethod.POST)
	public String saveContrato(@ModelAttribute("con") Contrato con) {
		
		contratoService.save(con);
		return "redirect:/listaContrato";
	}
	
	@RequestMapping("/editContrato")
	public ModelAndView editContratoForm(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("editFormContrato");
		Contrato con = contratoService.get(id);		
		mav.addObject("con",con );
		return mav;		
	}
	
	@RequestMapping("/deleteContrato")
	public String deleteContratoForm(@RequestParam int id) {
		contratoService.delete(id);
		return "redirect:/listaContrato";		
	}
	
	
	@RequestMapping("/searchContrato")
	public ModelAndView search(@RequestParam String keyword) {
		List<Contrato> result = contratoService.search(keyword);
		ModelAndView mav = new ModelAndView("searchContrato");
		mav.addObject("result", result);
		return mav;
	}
	
	
	
		
	
}
