// Agent agent_3 in project CBR.mas2j

/* Initial beliefs and rules */

titulo("SEGUNDA PARTE Y COMPLETACION,").

/* Initial goals */

!do_work.

/* Plans */

+!do_work : titulo(T) <- .wait(math.random(1200)+400);
						 +contenido("La membrana interdigital típica de sus pies posteriores les permite una natación fácil. Suelen ser de color verde o marrón con manchas negras y amarillentas por el dorso y más pálidas por el vientre. Muchas de las ranas de este género crían a principio del verano, aunque las especies tropicales y subtropicales lo hacen durante todo el año.  Los machos de la mayoría de las especies croan pero se cree que los de unas pocas son mudos. Las hembras desovan formando grandes masas o agregados globulares, alcanzando puestas de hasta 20 000 huevos.");
						 .println("He terminado mi parte: ", T); 
						 !share_work.

+!share_work : titulo(T) & contenido(C)
			  <- .send(printer, tell, parte(T, C)).
