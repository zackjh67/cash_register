;;Done By Adam Slifco
;;Done By Zachary Hern

(define tax 0.0625)
(define (rounding amount)(/ (round (* 100 (+ amount .0001))) 100))
(define (checkout value currenttotal)
   ( + (let loop ((i 0))
      (display "Enter Value($): ")
         (let ((amount (read)))
            (if (equal? amount value) i
                        (loop (+ i amount)))))
                          currenttotal)
                          )
                          (define (Start)
                          (display "Scheme Point-of-Sale")(newline)
                          (display "Start transaction (exit with 0)")(newline)
                          (define subtotal (checkout 0 0))
                          (newline)
                          (display "Subtotal: $")(display (rounding subtotal))(newline) 
                          (display "Tax: $")(display (rounding (* subtotal tax)))(newline)
                          (display "Total: $")(display (rounding (+ subtotal (* subtotal tax))))(newline) "Have a Good Day!")


