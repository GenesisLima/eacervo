package org.ntvru.eacervo.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

/*Classe para objetos do tipo Servidor, onde serão contidos, valores e métodos para o mesmo.
 * @author Gênesis Lima  
 * */
@Entity
@Table(name="EMPLOYEE")
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
   
   @ManyToOne
   @JoinColumn(name="department_id")
   @JsonManagedReference
   private Department department; 
   
   @ManyToOne
   private Employee parent;
   
   @OneToMany(mappedBy="parent", fetch=FetchType.LAZY)
   @Basic(optional=true)
   @JsonBackReference
   private List<Employee> childrens;
   
   @ManyToOne
   @JoinColumn(name="function_id")
   @JsonManagedReference
   private Function function;
   
   @Column(columnDefinition="char(1) default 'A'")
   private String status = "A";
   
   
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
public Department getDepartment() {
	return department;
}
public void setDepartment(Department department) {
	this.department = department;
}
public Employee getParent() {
	return parent;
}
public void setParent(Employee parent) {
	this.parent = parent;
}
public List<Employee> getChildrens() {
	return childrens;
}
public void setChildrens(List<Employee> childrens) {
	this.childrens = childrens;
}
public Function getFunction() {
	return function;
}
public void setFunction(Function function) {
	this.function = function;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}




//public Employee getResponsible() {
//	return responsible;
//}
//public void setResponsible(Employee responsible) {
//	this.responsible = responsible;
//}
   


   
}
