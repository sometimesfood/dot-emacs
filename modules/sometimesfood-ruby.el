(add-hook 'ruby-mode-hook
          (lambda ()
            (set (make-local-variable 'electric-pair-pairs)
                 (append electric-pair-pairs '((?\| . ?\|))))
            (set (make-local-variable 'compile-command)
                 "bundle exec rake test")))

(add-to-auto-mode-alist
 'ruby-mode
 '("Rakefile$" "Gemfile$" "\\.gemspec$" "\\.ru$"))

(provide 'sometimesfood-ruby)
