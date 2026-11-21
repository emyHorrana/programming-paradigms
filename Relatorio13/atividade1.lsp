(defstruct erva
  nome
  preco-por-grama
  toxicidade)

(defun classifica-erva (erva)
  (cond ((>= (erva-toxicidade erva) 7) "veneno")
        ((>= (erva-toxicidade erva) 4) "use com cuidado")
        (t "segura")))

(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))

(defun descreve-erva (erva)
  (format nil "~a - R$~,2f por grama - ~a"
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva)))

(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7) "Maomao vai testar a erva em si mesma antes." "Erva liberada para o paciente."))

(defun main ()
  (let ((estoque
          (list
            (make-erva :nome "Camomila" :preco-por-grama 2.50 :toxicidade 2)
            (make-erva :nome "Losna" :preco-por-grama 5.00  :toxicidade 5)
            (make-erva :nome "Aconito" :preco-por-grama 10.00  :toxicidade 9))))

    (format t "--- Estoque de Ervas ---~%")

    (dolist (e estoque)
      (format t "~a~%" (descreve-erva e))
      (format t "~a~%" (aviso e)))
    (format t "--- Preco da Dose ---~%")
    (format t "Preco de 5 gramas de Camomila: R$~,2f~%"
            (preco-da-dose (car estoque) 5))))

(main)
