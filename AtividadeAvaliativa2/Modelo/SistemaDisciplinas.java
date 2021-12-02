package br.com.disciplinas.model;

import java.util.ArrayList;
import java.util.List;

public class SistemaDisciplinas {

	private List<Disciplina> disciplina = new ArrayList<Disciplina>();
	
	public void adicionar(Disciplina d) {
		disciplina.add(d);
		//Gravar no banco de dados.
	}
	
	public List<Disciplina> listarDisciplina(){
		// Controlar no banco de dados
		return disciplina;
	}
}
