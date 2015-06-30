(add-hook 'ruby-mode-hook
          (lambda ()
            (set (make-local-variable 'compile-command)
                 "bundle exec --no-color rake test")))

(add-to-auto-mode-alist
 'ruby-mode
 '("Rakefile$" "Gemfile$" "\\.gemspec$" "\\.ru$"))

(provide 'sometimesfood-ruby)
