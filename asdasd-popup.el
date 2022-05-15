(setq popup-list '())

(defun asdasd-popup-describe-function ()
  (interactive)
  (asdasd-popup-create (documentation (symbol-at-point))))

(defun asdasd-popup-create (popup-text)
  "docstring"
  (interactive "P")
  (setq popup (popup-create (point) 10 10))
    (popup-set-list popup `(,popup-text))
    (push popup popup-list)
    (popup-draw popup)  
  )

(defun asdasd-named-popup-create (popup-text)
  (interactive "stext:")
   (asdasd-popup-create popup-text)
    ; do something here
    )


(defun asdasd-named-popup-delete-last ()
  "deletes last"
  (interactive)
  (let ((popup-deleted (pop popup-list)))
    (print popup-deleted)
    (popup-delete popup-deleted)
    )
  )


(global-set-key (kbd "M-q M-p") 'asdasd-named-popup-create)
(global-set-key (kbd "M-q M-d") 'asdasd-named-popup-delete-last)
(global-set-key (kbd "M-q h") 'asdasd-popup-describe-function)













