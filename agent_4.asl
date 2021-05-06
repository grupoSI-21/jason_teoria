// Agent agent_4 in project CBR.mas2j

/* Initial beliefs and rules */

titulo("CONCLUSION Y BIBLIOGRAFIA.").

/* Initial goals */

!do_work.

/* Plans */

+!do_work : titulo(T) <- .wait(math.random(300)+300);
						 +contenido("Con este trabajo concluimos que las ranas son unos animales realmente interesantes y muy saltarines.");
						 .println("He terminado mi parte: ", T); 
						 !share_work.
							
+!share_work : titulo(T) & contenido(C)
			  <- .send(printer, tell, parte(T, C)).
