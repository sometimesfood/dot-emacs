(add-hook 'text-mode-hook
	  (lambda () (set-input-method "german-postfix")))

(add-to-list 'load-path "~/.emacs.d/elisp/package-spec")
;(require 'package-spec)

(tool-bar-mode -1)
(scroll-bar-mode -1)
;; (menu-bar-mode -1)
(setq inhibit-startup-message t)

(column-number-mode 1)

(setq indent-tabs-mode nil)

(setq c-default-style "linux"
      c-basic-offset 4)

(defun my-c-mode-hook ()
  (setq indent-tabs-mode nil)
  (c-set-offset 'innamespace 0))
(add-hook 'c++-mode-hook 'my-c-mode-hook)

(package-initialize)
(load-theme 'solarized-light t)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(setq org-latex-to-pdf-process (list "latexmk -pdf %f"))

(require 'recentf)
(setq recentf-max-saved-items 200
      recentf-max-menu-items 15)
(recentf-mode t)
