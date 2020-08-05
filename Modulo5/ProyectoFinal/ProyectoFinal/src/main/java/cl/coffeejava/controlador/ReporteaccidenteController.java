package cl.coffeejava.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.coffeejava.modelo.Reporteaccidente;
import cl.coffeejava.servicio.ReporteaccidenteService;

@Controller
public class ReporteaccidenteController {
	
	@Autowired
	private ReporteaccidenteService reporteaccidenteservice;
	
	@RequestMapping ("listaReporteaccidente")
	public ModelAndView home() {
		
		List<Reporteaccidente> listReporteaccidente = reporteaccidenteservice.listAll();
		ModelAndView mav = new ModelAndView("listadoReporteaccidente");
		mav.addObject("listReporteaccidente", listReporteaccidente);
		return mav;
	}
	
	@RequestMapping("/searchReporteaccidente")
	public ModelAndView search(@RequestParam String keyword) {
		List<Reporteaccidente> result = reporteaccidenteservice.search(keyword);
		ModelAndView mav = new ModelAndView("searchReporteaccidente");
		mav.addObject("result", result);
		return mav;
	}
	

}
