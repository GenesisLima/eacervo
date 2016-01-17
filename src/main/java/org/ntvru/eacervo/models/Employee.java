package org.ntvru.eacervo.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/*Classe para objetos do tipo Servidor, onde serão contidos, valores e métodos para o mesmo.
 * @author Gênesis Lima  
 * */
@Entity
public class Employee {
   
   private int code;
   @Id
   @GeneratedValue(strategy=GenerationType.IDENTITY)
   private int employee_id;
   private String name;
   private String bound;
   private String branchLine;
   private String email;
  // private Employee responsible;
   
   /** Método para retorno da matrícula do funcionário.
    * 
    * @return int - Nr da Matrícula ou siape*/   
public int getCode() {
	return code;
}
public void setCode(int code) {
	this.code = code;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getBound() {
	return bound;
}
public void setBound(String bound) {
	this.bound = bound;
}
/** Método para retorno do ramal do funcionário.
 * 
 * @return int - Nr do Ramal do departamento do funcionário.*/ 
public String getBranchLine() {
	return branchLine;
}
public void setBranchLine(String branchLine) {
	this.branchLine = branchLine;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getEmployee_id() {
	return employee_id;
}
public void setEmployee_id(int employee_id) {
	this.employee_id = employee_id;
}



//public Employee getResponsible() {
//	return responsible;
//}
//public void setResponsible(Employee responsible) {
//	this.responsible = responsible;
//}
   
   
}
