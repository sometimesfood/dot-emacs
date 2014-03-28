(when (macosx-p)
  (setq mac-option-key-is-meta nil)
  (setq mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil))

(global-set-key (kbd "C-c h") 'helm-prelude)

(provide 'sometimesfood-keybindings)
