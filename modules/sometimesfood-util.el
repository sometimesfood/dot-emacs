(defun macos-p ()
  (string= "darwin" system-type))

(defun gui-p ()
  (not (null window-system)))

(defun add-to-path (path)
  (setenv "PATH" (concat path ":" (getenv "PATH")))
  (add-to-list 'exec-path path))

(defun add-to-auto-mode-alist (mode regexps)
  (mapcar
   (lambda (regexp)
     (add-to-list 'auto-mode-alist `(,regexp . ,mode)))
   regexps))

(defun add-local-hook (hook function)
  (add-hook hook function nil t))

(provide 'sometimesfood-util)
