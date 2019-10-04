package org.ntvru.eacervo.controller;

import java.sql.Time;
import java.time.LocalTime;

import javax.persistence.Entity;
import javax.transaction.Transactional;

import org.ntvru.eacervo.dao.GenericDAO;
import org.ntvru.eacervo.dao.ScheduleDAO;
import org.ntvru.eacervo.models.OperationReport;
import org.ntvru.eacervo.models.OperationReportId;
import org.ntvru.eacervo.models.Schedule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Entity
@Transactional
@Controller
@RequestMapping("/operacoes")
public class OperationController {

	@Autowired
	GenericDAO<OperationReport> dao;
	
	@Autowired
	ScheduleDAO scheduleDAO;
	
	@RequestMapping(value="/incidente",method = RequestMethod.POST)
	public @ResponseBody String saveReport(@RequestParam("report")  String report, @RequestParam("scheduleId")  String scheduleId) {
		OperationReport operationReport = new OperationReport();
		Schedule schedule = scheduleDAO.getById(Integer.parseInt(scheduleId));
		operationReport.setOperationReportId(new OperationReportId(Time.valueOf(LocalTime.now()), Integer.parseInt(scheduleId)));
		operationReport.setSchedule(schedule);
		operationReport.setReport(report);
		dao.save(operationReport);
		
		
		return "Relatório Salvo com Sucesso!";
	} 
}
