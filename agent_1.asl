// Agent agent_1 in project CBR.mas2j

/* Initial beliefs and rules */

titulo("PORTADA E INTRO").

/* Initial goals */

!do_work.

/* Plans */

+!do_work : titulo(T) <- .wait(math.random(500)+500);
						 +contenido("Rana es un género de anfibios anuros de la familia Ranidae, que habita en Eurasia templada hasta Indochina.");
						 .println("He terminado mi parte: ", T); 
						 !share_work.
							
+!share_work : titulo(T) & contenido(C)
			  <- .send(printer, tell, parte(T, C)).
