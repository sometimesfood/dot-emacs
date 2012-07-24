(add-hook 'text-mode-hook
	  (lambda () (set-input-method "german-postfix")))

(add-to-list 'load-path "~/.emacs.d/elisp/package-spec")
;(require 'package-spec)

(tool-bar-mode -1)
(scroll-bar-mode -1)

(package-initialize)
(require 'color-theme)
(color-theme-solarized-light)
