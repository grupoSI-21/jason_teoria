// Agent agent_2 in project CBR.mas2j

/* Initial beliefs and rules */

titulo("INDICE Y PRIMERA PARTE").

/* Initial goals */

!do_work.

/* Plans */

+!do_work : titulo(T) <- .wait(math.random(1000)+500);
						 +contenido("*** indice ***\nLas especies de este género se caracterizan por sus cinturas delgadas y la piel rugosa, muchas poseen finas estrías que recorren la espalda aunque sin las verrugas típicas de los sapos.  Son excelentes saltadoras debido a sus largas y delgadas patas traseras.");						
						 .println("He terminado mi parte: ", T); 
						 !share_work.
							
+!share_work : titulo(T) & contenido(C)
			  <- .send(printer, tell, parte(T, C)).
