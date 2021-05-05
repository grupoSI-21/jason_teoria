// Agent agent_1 in project CBR.mas2j


/* Initial beliefs and rules */
me(_).

contenido(1, " PORTADA E INTRO,").

/* Initial goals */

!share_work.

/* Plans */

+!share_work : me(Ord) & contenido(Ord, C) 
			  <- .send(printer, tell, contenido(Ord, C)).

-!share_work.

