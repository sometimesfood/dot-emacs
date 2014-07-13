(add-hook 'ruby-mode-hook
          (lambda ()
            (setq compile-command "bundle exec rake test")))

(add-to-auto-mode-alist
 'ruby-mode
 '("Rakefile$" "Gemfile$" "\\.gemspec$" "\\.ru$"))

(provide 'sometimesfood-ruby)
