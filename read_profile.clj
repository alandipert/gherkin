(use 'clojure.pprint)

(defn read-profile [f]
  (let [stats (read-string (str "[" (slurp f) "]"))
        called (into #{} (map second stats))
        call-time (fn call-time [x] (partition 2 (filter #(= (second %) x) ents)))
        total-time (fn [x] (reduce + (map (fn [[[_ _ start] [_ _ end]]] (- end start)) (call-time x))))]
    (pprint (into (sorted-map) (map #(vector (total-time %) %) called)))))
