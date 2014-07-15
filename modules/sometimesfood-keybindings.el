(when (macosx-p)
  (setq mac-option-key-is-meta nil)
  (setq mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil))

(global-set-key (kbd "C-c h") 'helm-prelude)
(global-set-key (kbd "<f5>") 'compile)
(setq compilation-read-command nil)
(global-unset-key [(control z)])
(ffap-bindings)

(provide 'sometimesfood-keybindings)
