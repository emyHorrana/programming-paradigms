(defstruct criatura
  nome
  bioma
  profundidade
  perigo)

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva "Agressiva")
    (:leviata "Leviata: mantenha distancia")
    (otherwise "Desconhecido")))

(defun descreve-criatura (c)
  (format nil "~a - Bioma: ~a - Profundidade: ~a metros - Perigo: ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c)
                   (> (criatura-profundidade c) metros))
                 catalogo))

(defparameter *catalogo*
  (list (make-criatura :nome "Peixe Bolha" :bioma "Floresta de Algas" :profundidade 30 :perigo :inofensiva)
    (make-criatura :nome "Stalker" :bioma "Floresta de Algas":profundidade 100 :perigo :agressiva)
    (make-criatura :nome "Reaper Leviathan" :bioma "Zona de Naufragio" :profundidade 400 :perigo :leviata)
    (make-criatura :nome "Peixe Palha" :bioma "Recife Seguro" :profundidade 20 :perigo :inofensiva)))

(defun main ()
  (format t "--- Catalogo de Criaturas ---~%")
  (dolist (c (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" c))
  (format t "--- Criaturas abaixo de 50 metros ---~%")
  (dolist (c (mapcar #'descreve-criatura
                     (abaixo-de 50 *catalogo*)))
    (format t "~a~%" c))
  (format t "Quantidade de criaturas: ~a~%"
          (length *catalogo*))
  (format t "Quantidade abaixo de 50 metros: ~a~%"
          (length (abaixo-de 50 *catalogo*))))

(main)



