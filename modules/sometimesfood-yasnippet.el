(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs
        (list (concat sometimesfood-base-dir "snippets")))
  (yas-global-mode 1))

(provide 'sometimesfood-yasnippet)
