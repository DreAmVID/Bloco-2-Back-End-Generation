package com.FirstLesson.Licao2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller_Atividade_2 {
	
	@GetMapping("/Objetivos")

	public String Objetivos() {
		
		return "Aprender Spring e tirar o atraso das atividades";
		
	}
	
}
