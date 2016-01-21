package org.ntvru.eacervo.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/*Classe para objetos do tipo Servidor, onde serão contidos, valores e métodos para o mesmo.
 * @author Gênesis Lima  
 * */
@Entity
public class Employee implements Serializable{
   
   private int code;
   @Id
   @GeneratedValue(strategy=GenerationType.IDENTITY)
   @Column(name="employee_id")
   private int id;
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
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + id;
	return result;
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	Employee other = (Employee) obj;
	if (id != other.id)
		return false;
	return true;
}




//public Employee getResponsible() {
//	return responsible;
//}
//public void setResponsible(Employee responsible) {
//	this.responsible = responsible;
//}
   


   
}
