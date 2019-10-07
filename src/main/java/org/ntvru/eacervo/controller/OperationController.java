package org.ntvru.eacervo.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Tuple;
import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.dao.ScheduleDAO;
import org.ntvru.eacervo.dao.ScheduleItemDAO;
import org.ntvru.eacervo.models.OperationReport;
import org.ntvru.eacervo.models.OperationReportId;
import org.ntvru.eacervo.models.Schedule;
import org.ntvru.eacervo.models.ScheduleItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Entity
@Transactional
@Controller
@RequestMapping("/operacoes")
public class OperationController {

	@Autowired
	GenericDAO<OperationReport> dao;
	
	@Autowired
	ScheduleDAO scheduleDAO;
	
	@Autowired
	ScheduleItemDAO scheduleItemDAO;
	
	@RequestMapping(value="/incidente",method = RequestMethod.POST)
	public @ResponseBody String saveReport(@RequestParam("report")  String report, @RequestParam("scheduleId")  String scheduleId, @RequestParam("scheduleItemId")  String scheduleItemId) {
		OperationReport operationReport = new OperationReport();
		Schedule schedule = scheduleDAO.getById(Integer.parseInt(scheduleId));
		ScheduleItem scheduleItem = scheduleItemDAO.getById(scheduleItemId);
		operationReport.setOperationReportId(new OperationReportId(Time.valueOf(LocalTime.now()), Integer.parseInt(scheduleId)));
		operationReport.setSchedule(schedule);
		operationReport.setScheduleItem(scheduleItem);
		operationReport.setReport(report);
		System.out.println("TIME IS "+Time.valueOf(LocalTime.now()).toString());
		dao.save(operationReport);
		
		
		return "Relatório Salvo com Sucesso!";
	} 
	
	@RequestMapping(method=RequestMethod.GET)	
		public ModelAndView getScheduleByDate(@RequestParam("exhibitionDate") String data, ModelAndView modelAndView) throws IOException{
//			System.out.println("TYPE "+type);
			System.out.println("DATA "+data.toString());
			System.out.println("DATE "+Date.valueOf(data));

			//TODO trocar String pelo atributo(Generics)
			modelAndView.setViewName("operacoes/view");
			Schedule schedule = null;
			List<Schedule> schedules = new ArrayList<>();
			System.out.println("IS NULL? "+scheduleDAO.getEntityByAttribute("exhibitionDate", Date.valueOf(data)));
//			if(type.trim().equalsIgnoreCase("json")) {
				if(scheduleDAO.getEntityByAttribute("exhibitionDate", Date.valueOf(data))==null) {
					return modelAndView;
				}
		    Tuple tuple = scheduleDAO.getEntityByAttribute("exhibitionDate", Date.valueOf(data));
		    
		    schedule = (Schedule) tuple.get(0);
			System.out.println("TUPLA "+scheduleDAO.getEntityByAttribute("exhibitionDate", Date.valueOf(data)).get(0));
			
			schedules.add(schedule);
			modelAndView.addObject("data",data);
			modelAndView.addObject("productTypes",schedules);
//	        schedule.setId(tuple.get(0));
//	 		schedule.setExhibitionDate(tuple.get(1, Date.class));
		//	}
			return modelAndView;
		}
}
