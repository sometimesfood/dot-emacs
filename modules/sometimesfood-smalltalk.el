(use-package smalltalk-mode
  :ensure t
  :defer t
  :init
  (add-to-list 'auto-mode-alist '("\\.gs\\'" . smalltalk-mode))
  :config
  (defun hide-dos-eol ()
    "Hide carriage returns in files with mixed line endings (Unix/DOS)."
    (setq buffer-display-table (make-display-table))
    (aset buffer-display-table ?\^M []))

  (add-hook 'smalltalk-mode-hook 'hide-dos-eol))

(provide 'sometimesfood-smalltalk)
