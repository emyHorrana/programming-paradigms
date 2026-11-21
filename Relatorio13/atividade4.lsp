(defstruct dominio
  nome
  elemento
  dificuldade
  mora)

(defun bonus-elemental (elemento)
  (case elemento
    (:electro 1.5)
    (:hydro 1.2)
    (otherwise 1)))

(defun recompensa-final (d)
  (* (dominio-mora d)
     (bonus-elemental (dominio-elemento d))))

(defun rota (lista dificuldade-maxima)
  (let* ((filtrados (remove-if-not
                      (lambda (d)
                        (<= (dominio-dificuldade d) dificuldade-maxima))
                      lista))
         (textos (mapcar
                   (lambda (d)
                     (format nil "~a - ~a mora"
                             (dominio-nome d)
                             (recompensa-final d)))
                   filtrados)))
    textos))

(defun main ()
  (let ((lista (list (make-dominio :nome "Floresta" :elemento :pyro :dificuldade 2 :mora 1000)
                     (make-dominio :nome "Caverna" :elemento :hydro :dificuldade 3 :mora 2000)
                     (make-dominio :nome "Montanha" :elemento :electro :dificuldade 5 :mora 3000)
                     (make-dominio :nome "Vale" :elemento :cryo :dificuldade 1 :mora 1500)
                     (make-dominio :nome "Ruinas" :elemento :hydro :dificuldade 4 :mora 2500))))
    (format t "--- Rota de Dominios ---~%")

    (dolist (d (rota lista 3))
      (format t "~a~%" d))

    (format t "--- Total de Mora ---~%")
    (format t "Total: ~a mora~%"
            (reduce #'+ (mapcar #'recompensa-final lista)))

    (format t "--- Alteracao de Dominio ---~%")

    (let ((copia (copy-dominio (car lista))))
      (setf (dominio-mora copia) 5000)
      (format t "Mora da copia: ~a~%" (dominio-mora copia))
      (format t "Mora do original: ~a~%"
              (dominio-mora (car lista))))))

(main)
