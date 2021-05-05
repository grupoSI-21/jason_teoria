// Agent printer in project CBR.mas2j

/* Initial beliefs and rules */

/* Initial goals */

!print_work.

/* Plans */

+!print_work : contenido(1, C1) & contenido(2, C2) & 
			   contenido(3, C3) & contenido(4, C4) 
			   <- .println(C1, C2, C3, C4).

+!print_work <- !print_work.
