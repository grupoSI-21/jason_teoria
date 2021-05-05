// Agent agent_2 in project CBR.mas2j


/* Initial beliefs and rules */
me(_).

contenido(2, " INDICE Y PRIMERA PARTE,").

/* Initial goals */

!share_work.

/* Plans */

+!share_work : me(Ord) & contenido(Ord, C) 
			  <- .send(printer, tell, contenido(Ord, C)).

-!share_work.
