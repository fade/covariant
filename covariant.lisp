;; -*-lisp-*-
(defpackage :covariant
            (:use :cl)
            (:use :covariant.app-utils)
            (:export :-main))

(in-package :covariant)


(defun read-cov2-csv (filename)
  "given a file of csv data in the format defined by Health Ontario, read and parse it."
  (with-open-file (s filename :direction :input)
   (let* ((data (cl-csv:read-csv s)))
     data)))

;; (defparameter *table-with-dates*
;;              (vellum:transform *table*
;;                                (vellum:bind-row (Date)
;;                                  (if Date
;;                                      (setf Date (net-telent-date:parse-time Date)))))

;; (setf *table* (vellum:make-table :columns *))

(defun -main (&optional args)
  (format t "~a~%" "I don't do much yet"))

