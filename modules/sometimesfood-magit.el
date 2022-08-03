(defun magit-kill-buffers (param)
  "Restore window configuration and kill all Magit buffers."
  (let ((buffers (magit-mode-get-buffers)))
    (magit-restore-window-configuration)
    (mapc #'kill-buffer buffers)))

(setq magit-bury-buffer-function #'magit-kill-buffers)

(provide 'sometimesfood-magit)
