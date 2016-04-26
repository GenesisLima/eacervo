package org.ntvru.eacervo.test;

public class Usuario {

	private String nome;
	private int pontos;
	private boolean moderador;
	
	
	
	public Usuario() {
		super();
	}
	
	
	
	public Usuario(String nome, int pontos) {
		super();
		this.nome = nome;
		this.pontos = pontos;
	}



	public Usuario(String nome, int pontos, boolean moderador) {
		super();
		this.nome = nome;
		this.pontos = pontos;
		this.moderador = moderador;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getPontos() {
		return pontos;
	}
	public void setPontos(int pontos) {
		this.pontos = pontos;
	}
	public boolean isModerador() {
		return moderador;
	}
	public void setModerador(boolean moderador) {
		this.moderador = moderador;
	}
	
}
