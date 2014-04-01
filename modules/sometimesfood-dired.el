(require 'dired-single-autoloads)

(add-hook 'dired-load-hook
          (lambda ()
            (define-key dired-mode-map [return] 'dired-single-buffer)
            (define-key dired-mode-map [mouse-1] 'dired-single-buffer-mouse)
            (define-key dired-mode-map "^"
              (function
               (lambda nil (interactive) (dired-single-buffer ".."))))))

(provide 'sometimesfood-dired)
