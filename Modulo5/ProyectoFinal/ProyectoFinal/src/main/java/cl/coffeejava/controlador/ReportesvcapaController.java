package cl.coffeejava.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cl.coffeejava.modelo.Reportesvcapa;
import cl.coffeejava.servicio.ReportesvcapaService;


@Controller
public class ReportesvcapaController {
	
	@Autowired
	private ReportesvcapaService reportesvcapaservice;
	
	@RequestMapping ("listaReportesvcapa")
	public ModelAndView home() {
		
		List<Reportesvcapa> listReportesvcapa = reportesvcapaservice.listAll();
		ModelAndView mav = new ModelAndView("listadoReportesvcapa");
		mav.addObject("listReportesvcapa", listReportesvcapa);
		return mav;
	}
	
	@RequestMapping("/searchReportesvcapa")
	public ModelAndView search(@RequestParam String keyword) {
		List<Reportesvcapa> result = reportesvcapaservice.search(keyword);
		ModelAndView mav = new ModelAndView("searchReportesvcapa");
		mav.addObject("result", result);
		return mav;
	}
	

}
