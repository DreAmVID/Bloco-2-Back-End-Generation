package com.FirstLesson.FirstEntry;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Atividade_1_Controller {
	
	
	@GetMapping("/Mentalidades")
	public String FirstLesson() {
		
		String Frase = "Mentalide de persistência, atenção aos detalhes, orientação ao futuro";
		
		return Frase;
	}

}
