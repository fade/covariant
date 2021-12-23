;; -*-lisp-*-
;;;; covariant.asd

(asdf:defsystem #:covariant
  :description "get covid statistics from various sources and put them in a time series database"
  :author "Brian O'Reilly"
  :license "Modified BSD License"
  :serial t
  :depends-on (#:rutils
               #:cl-ppcre
               #:dexador
               #:jonathan
               #:quri
               #:cl-strings
               #:cl-interpol
               )
  :pathname "./"
  :components ((:file "app-utils")
               (:file "covariant")
               ))

