(use-package ruby-mode
  :config
  (add-hook 'ruby-mode-hook
            (lambda ()
              (set (make-local-variable 'electric-pair-pairs)
                   (append electric-pair-pairs '((?\| . ?\|))))
              (set (make-local-variable 'compile-command)
                   "bundle exec rake test"))))

(provide 'sometimesfood-ruby)
