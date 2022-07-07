;; find several files in one buffer


;; return file content as string
(defun insert-file-content (file)
  (with-temp-buffer
    (insert-file-contents file)
    (insert (buffer-string))))

;; insert string to current buffer


(defun find-file-in-one-buffer (file-list)
  (let ((buffer (get-buffer-create "*find-file-in-one-buffer*")))
    (set-buffer buffer)
    (mapc 'insert-file-contents file-list)
    (goto-char (point-min))
    (switch-to-buffer buffer)))

(find-file-in-one-buffer (directory-files "./" t "\\.el$"))


