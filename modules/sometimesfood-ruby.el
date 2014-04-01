(ensure-installed 'minitest)
(ensure-installed 'rbenv)

(require 'minitest)
(require 'rbenv)

(add-hook 'ruby-mode-hook 'minitest-mode)
(add-hook 'ruby-mode-hook 'global-rbenv-mode)
(setq rbenv-show-active-ruby-in-modeline nil)

(provide 'sometimesfood-ruby)
