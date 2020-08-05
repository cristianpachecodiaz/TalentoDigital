package cl.coffeejava.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.coffeejava.modelo.Reportesvas;
import cl.coffeejava.servicio.ReportesvasService;


@Controller
public class ReportesvasController {
	
	@Autowired
	private ReportesvasService reportesvasservice;
	
	@RequestMapping ("listaReportesvas")
	public ModelAndView home() {
		
		List<Reportesvas> listReportesvas = reportesvasservice.listAll();
		ModelAndView mav = new ModelAndView("listadoReportesvas");
		mav.addObject("listReportesvas", listReportesvas);
		return mav;
	}
	
	@RequestMapping("/searchReportesvas")
	public ModelAndView search(@RequestParam String keyword) {
		List<Reportesvas> result = reportesvasservice.search(keyword);
		ModelAndView mav = new ModelAndView("searchReportesvas");
		mav.addObject("result", result);
		return mav;
	}
	

}
