package cl.coffeejava.controlador;


import java.util.Calendar;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.coffeejava.modelo.Acc;
import cl.coffeejava.servicio.AccService;

@Controller
public class AccController {

	@Autowired
	private AccService accService;
	
	@RequestMapping("/listaAcc")
	public ModelAndView home() {
		List<Acc> listAcc = accService.listAll();
		ModelAndView mav = new ModelAndView("listadoAcc");
		mav.addObject("listAcc", listAcc);
		return mav;		
	}
	
	@RequestMapping("/nuevoAcc")
	public String newAccForm(Map<String, Object> model) {
		Acc acc = new Acc();
		model.put("acc", acc);
		return "formAcc";		
	}
	
	@RequestMapping(value ="/saveFormAcc", method = RequestMethod.POST)
	public String saveformAcc(@ModelAttribute("acc") Acc acc) {
		java.sql.Date sqlDate = new java.sql.Date(Calendar.getInstance().getTime().getTime());
        
		acc.setFechaacc(sqlDate);
	    
		accService.save(acc);
		return "redirect:/listaAcc";
	}
	
	@RequestMapping(value ="/saveAcc", method = RequestMethod.POST)
	public String saveAcc(@ModelAttribute("acc") Acc acc) {
		Acc aux = accService.get(acc.getIdacc());
		java.sql.Date sqlDate = aux.getFechaacc();
		acc.setFechaacc(sqlDate);
		//acc.setFechaacc(sqlDate);
		accService.save(acc);
		return "redirect:/listaAcc";
	}
	
	@RequestMapping("/editAcc")
	public ModelAndView editAccForm(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("editFormAcc");
		Acc acc = accService.get(id);		
		mav.addObject("acc",acc );
		return mav;		
	}
	
	@RequestMapping("/deleteAcc")
	public String deleteAccForm(@RequestParam int id) {
		accService.delete(id);
		return "redirect:/listaAcc";		
	}
	
	@RequestMapping("/searchAcc")
	public ModelAndView search(@RequestParam String keyword) {
		List<Acc> result = accService.search(keyword);
		ModelAndView mav = new ModelAndView("searchResAcc");
		mav.addObject("result", result);
		return mav;
	}
	
	
		
	
}
