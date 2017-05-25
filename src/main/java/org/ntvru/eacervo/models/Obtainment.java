package org.ntvru.eacervo.models;

public enum Obtainment {
   PRODUCTION("Producao"), ACQUISITION("Aquisicao"),LICENSING("Licenciamento");
   
   String value;
   
   Obtainment(String value){
	   this.value = value;
   }
   
   public String getValue(){
	   return this.value;
   }
}
