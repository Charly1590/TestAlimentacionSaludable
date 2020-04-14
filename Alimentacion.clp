
(deftemplate respuetas
	
	(slot preg1
		(type INTEGER)
		(default 0)	
		(allowed-integers 0 1 2 3 4 5) 
	) 
	
	(slot preg2
		(type INTEGER)
		(default 0)	
		(allowed-integers 0 1 2 3 4 5) 
	)
	
	(slot preg3
		(type INTEGER)
		(default 0)	
		(allowed-integers 0 1 2 3 4 5) 
	)
	
	(slot preg4
		(type INTEGER)
		(default 0)	
		(allowed-integers 0 1 2 3 4 5) 
	)
	
	(slot preg5
		(type INTEGER)
		(default 0)	
		(allowed-integers 0 1 2 3 4 5) 
	)
	
	(slot preg6
		(type INTEGER)
		(default 0)	
		(allowed-integers 0 1 2 3 4 5) 
	)
	
	(slot preg7
		(type INTEGER)
		(default 0)	
		(allowed-integers 0 1 2 3 4 5) 
	)
	
	(slot preg8
		(type INTEGER)
		(default 0)	
		(allowed-integers 0 1 2 3 4 5) 
	)
	
	(slot preg9
		(type INTEGER)
		(default 0)	
		(allowed-integers 0 1 2 3 4 5) 
	)
	
	(slot preg10
		(type INTEGER)
		(default 0)	
		(allowed-integers 0 1 2 3 4 5) 
	)
	
)


(deffunction suma
  (?p1 ?p2 ?p3 ?p4 ?p5 ?p6 ?p7 ?p8 ?p9 ?p10)
  (+ ?p1 (+ ?p2 (+ ?p3 (+ ?p4 (+ ?p5 (+ ?p6 (+ ?p7 (+ ?p8 (+ ?p9 ?p10)))))))))

)



(defrule sumpunt
    
	(respuetas 
	(preg1 ?p1)
	(preg2 ?p2)
	(preg3 ?p3)
	(preg4 ?p4)
	(preg5 ?p5)
	(preg6 ?p6)
	(preg7 ?p7)
	(preg8 ?p8)
	(preg9 ?p9)
	(preg10 ?p10)
	)
=>         
    
	(assert (puntaje (suma ?p1 ?p2 ?p3 ?p4 ?p5 ?p6 ?p7 ?p8 ?p9 ?p10)))
  
)




(defrule salud1
    (puntaje ?p)
    (test (< ?p 11 ))
=>         
    (printout t "Tu salud corre peligro"  crlf) 
	(reset)
)

(defrule salud2
    (puntaje ?p)
    (test (<= ?p 20 ))
	(test (>= ?p 11 ))
=>         
    (printout t "Debes mejorar tu forma de alimentarte"  crlf) 
	(reset)
  
)

(defrule salud3
    (puntaje ?p)
    (test (<= ?p 30 ))
	(test (>= ?p 21 ))
=>         
    (printout t "Tu alimentacion esta un poco mal, puedes mejorarla"  crlf) 
	(reset)
)

(defrule salud4
	(puntaje ?p)
    (test (<= ?p 40 ))
	(test (>= ?p 31 ))
=>         
    (printout t "Tienes una buena Alimentacion"  crlf) 
	(reset)
)

(defrule salud5
    (puntaje ?p)
    (test (> ?p 40 ))
=>         
    (printout t "Tu salud es Excelente"  crlf) 
	(reset)
)

