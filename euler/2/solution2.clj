(def fib
  (( fn rfib [a, b]
    (lazy-seq (cons a (rfib b ( + a b)))))
   0 1))

(reduce + (take-while (partial >= 4000000) fib))
