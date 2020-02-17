(in-package :next-user)

;; SWANK
(setq *swank-port* 4010)

(start-swank *swank-port*)

;; BUFFER

;; https://github.com/atlas-engineer/next/blob/0343ebab4b96ddec761574b96743cdd287275f03/documents/MANUAL.org#styles
(defclass default-buffer (buffer)
  ((default-modes :initform
                  (cons 'vi-normal-mode (get-default 'buffer 'default-modes)))
  (box-style :initform
   (cl-css:inline-css
    '(:background "#000"
      :color "black"
      :border "1px #C38A22 solid"
      :font-weight "bold"
      :padding "1px 3px 0px 3px"
      :padding "1px 3px 0px 3px"
      :position "absolute"
      :text-align "center"
      :text-shadow "0 3px 7px 0px rgba(0,0,0,0.3)")))))


(setf *buffer-class* 'default-buffer)
