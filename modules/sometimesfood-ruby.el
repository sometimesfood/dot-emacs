(add-hook 'ruby-mode-hook
          (lambda ()
            (setq compile-command "bundle exec rake test")))

(provide 'sometimesfood-ruby)
