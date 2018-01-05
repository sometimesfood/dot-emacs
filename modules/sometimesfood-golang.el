(use-package go-mode
  :ensure t
  :defer t
  :config
  (add-hook 'go-mode-hook
            (lambda ()
              (setq gofmt-command "goimports")
              (add-local-hook 'before-save-hook
                              'gofmt-before-save))))

(provide 'sometimesfood-golang)
