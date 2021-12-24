;; -*-lisp-*-
;;;; covariant.asd

(asdf:defsystem #:covariant
  :description "get covid statistics from various sources and put them in a time series database"
  :author "Brian O'Reilly"
  :license "Modified BSD License"
  :serial t
  :depends-on (#:rutils
               #:cl-ppcre
               #:postmodern
               #:cl-csv
               #:vellum
               #:vellum-csv
               #:vellum-postmodern
               #:dexador
               #:jonathan
               #:quri
               #:cl-strings
               #:local-time
               #:net-telent-date
               #:cl-interpol)
  :pathname "./"
  :components ((:file "app-utils")
               (:file "covariant")))

