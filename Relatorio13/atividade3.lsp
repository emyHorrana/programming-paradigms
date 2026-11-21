(defstruct garota
  nome
  escuridao
  bruxas)

(defun soma-escuridao (grupo)
  (if (null grupo)
      0
      (+ (garota-escuridao (car grupo))
         (soma-escuridao (cdr grupo)))))

(defun soma-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-bruxas grupo)))

(defun purifica (g quantidade)
  (make-garota :nome (garota-nome g)
               :escuridao (if (>= quantidade (garota-escuridao g))
                              0
                              (- (garota-escuridao g) quantidade))
               :bruxas (garota-bruxas g)))
(defun main ()
  (let ((grupo (list (make-garota :nome "Ana" :escuridao 30 :bruxas 5)
                     (make-garota :nome "Julia":escuridao 80 :bruxas 3))))
    (format t "--- Grupo de Garotas ---~%")
    (format t "Escuridao total: ~a~%" (soma-escuridao grupo))
    (format t "Total de bruxas derrotadas: ~a~%" (soma-bruxas grupo))
    (let ((nova (make-garota :nome "Laura" :escuridao 10 :bruxas 4)))
      (let ((novo-grupo (cons nova grupo)))
        (format t "--- Novo Grupo ---~%")
        (format t "Escuridao do grupo original: ~a~%" (soma-escuridao grupo))
        (format t "Escuridao do novo grupo: ~a~%" (soma-escuridao novo-grupo))))
    (let ((original (car grupo)))
      (let ((nova (purifica original 20)))
        (format t "--- Purificacao ---~%")
        (format t "Escuridao original: ~a~%" (garota-escuridao original))
        (format t "Escuridao nova: ~a~%" (garota-escuridao nova))))))

(main)
