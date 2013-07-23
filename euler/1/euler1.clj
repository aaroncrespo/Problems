(defn divisable? [n]
  (or (zero? (mod n 3))
      (zero? (mod n 5))))

(reduce + (filter divisable? (range 1001)))
;; or (map inc (range 1000)) I guess...


(def fivethreesum (lazy-seq(map #(cond ))))

