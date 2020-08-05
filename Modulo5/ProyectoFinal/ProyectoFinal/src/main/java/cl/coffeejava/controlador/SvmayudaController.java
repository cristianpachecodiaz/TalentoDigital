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

import cl.coffeejava.modelo.Svmayuda;
import cl.coffeejava.servicio.SvmayudaService;

@Controller
public class SvmayudaController {
	@Autowired
	private SvmayudaService svmayudaService;
	
	@RequestMapping("/listadoSvmayuda")
	public ModelAndView home() {
		List<Svmayuda> listaSvmayuda = svmayudaService.listAll();
		ModelAndView mav = new ModelAndView("listadoSvmayuda");
		mav.addObject("listaSvmayuda", listaSvmayuda);
		return mav;		
	}
	
	
	@RequestMapping("/nuevoSvmayuda")
	public String newSvmayudaForm(Map<String, Object> model) {
		Svmayuda svm = new Svmayuda();
		model.put("svm", svm);
		return "formSvmayuda";		
	}
	
	@RequestMapping(value ="/saveFormSvmayuda", method = RequestMethod.POST)
	public String saveformSvmayuda(@ModelAttribute("svm") Svmayuda svm) {
		int valor=0;
		svm.setDurasvm(valor);
		
		svmayudaService.save(svm);
		return "redirect:/listadoSvmayuda";
		
	}
	
	@RequestMapping(value ="/saveSvmayuda", method = RequestMethod.POST)
	public String saveSvmayuda(@ModelAttribute("svm") Svmayuda svm) {
		
		svmayudaService.save(svm);
		return "redirect:/listadoSvmayuda";
		
	}
	
	
	@RequestMapping("/editSvmayuda")
	public ModelAndView editSvmayudaForm(@RequestParam int id) {
		ModelAndView mav = new ModelAndView("editFormSvmayuda");
		Svmayuda svm = svmayudaService.get(id);	
		mav.addObject("svm",svm );
		return mav;		
	}
	
	@RequestMapping("/deleteSvmayuda")
	public String deleteSvmayudaForm(@RequestParam int id) {
		svmayudaService.delete(id);
		return "redirect:/listadoSvmayuda";		
	}
	
	
	@RequestMapping("/searchSvmayuda")
	public ModelAndView search(@RequestParam String keyword) {
		List<Svmayuda> result = svmayudaService.search(keyword);
		ModelAndView mav = new ModelAndView("searchSvmayuda");
		mav.addObject("result", result);
		return mav;
	} 
		

}
