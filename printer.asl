// Agent printer in project CBR.mas2j

/* Initial beliefs and rules */
orden(1, "PORTADA E INTRO").
orden(2, "INDICE Y PRIMERA PARTE").
orden(3, "SEGUNDA PARTE Y COMPLETACION").
orden(4, "CONCLUSION Y BIBLIOGRAFIA").

/* Initial goals */

!print_work.

/* Plans */

+!print_work : parte(T1, C1) & orden(1, T1) &
			   parte(T2, C2) & orden(2, T2) &
			   parte(T3, C3) & orden(3, T3) &
			   parte(T4, C4) & orden(4, T4)
			   <- .println("1", ". ", T1, "\n", C1, "\n\n",
			               "2", ". ", T2, "\n", C2, "\n\n",
				           "3", ". ", T3, "\n", C3, "\n\n",
				           "4", ". ", T4, "\n", C4, "\n\n",
						   "FIN DEL TRABAJO").
				  
+!print_work <- !print_work.
