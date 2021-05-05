// Agent agent_4 in project CBR.mas2j


/* Initial beliefs and rules */
actual(4).

contenido(4, " CONCLUSION Y BIBLIOGRAFIA.").

/* Initial goals */

!share_work.

/* Plans */

+!share_work : me(Ord) & contenido(Ord, C) 
			  <- .send(printer, tell, contenido(Ord, C)).

-!share_work.
