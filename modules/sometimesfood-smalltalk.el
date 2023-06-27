(use-package smalltalk-mode
  :ensure t
  :defer t
  :mode "\\.gs\\'"
  :hook (smalltalk-mode . hide-dos-eol)
  :config
  (defun hide-dos-eol ()
    "Hide carriage returns in files with mixed line endings (Unix/DOS)."
    (setq buffer-display-table (make-display-table))
    (aset buffer-display-table ?\^M [])))

(provide 'sometimesfood-smalltalk)
