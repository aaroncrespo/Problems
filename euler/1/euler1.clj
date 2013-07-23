(defn divisable? [n]
  (or (= 0 (mod n 3))
      (= 0 (mod n 5))))

(reduce + (filter divisable? (range 1001)))
;; or (map inc (range 1000)) I guess...
