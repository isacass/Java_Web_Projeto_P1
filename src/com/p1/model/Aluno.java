package com.p1.model;

public class Aluno {

	private int alunoId;
	private String matric;
	private String nome;
	private String curso;
	private int ano;
	private int sem;
	private int p1;
	private int p2;
	
	public int getAlunoId() {
		return alunoId;
	}
	public void setAlunoId(int alunoId) {
		this.alunoId = alunoId;
	}
	public String getMatric() {
		return matric;
	}
	public void setMatric(String matric) {
		this.matric = matric;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCurso() {
		return curso;
	}
	public void setCurso(String curso) {
		this.curso = curso;
	}
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
		public int getSem() {
		return sem;
	}
	public void setSem(int sem) {
		this.sem = sem;
	}
		public int getP1() {
		return p1;
	}
	public void setP1(int p1) {
		this.p1 = p1;
	}
		public int getP2() {
		return p2;
	}
	public void setP2(int p2) {
		this.p2 = p2;
	}
	@Override
	public String toString() {
		return "Aluno [alunoId=" + alunoId + ", matric=" + matric
				+ ", nome=" + nome + ", curso=" + curso + ", ano="
				+ ano + ", sem="+ sem + ", p1="+ p1 + ", p2="+ p2 + "]";
	}
		
}
