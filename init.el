(defvar sometimesfood-base-dir (file-name-directory load-file-name)
  "The base directory of this Emacs configuration.")

(add-to-list 'load-path (expand-file-name "modules" sometimesfood-base-dir))
(require 'sometimesfood-packages)
(require 'sometimesfood-appearance)

(add-hook 'text-mode-hook
	  (lambda () (set-input-method "german-postfix")))

(setq indent-tabs-mode nil)

(setq c-default-style "linux"
      c-basic-offset 4)

(defun my-c-mode-hook ()
  (setq indent-tabs-mode nil)
  (c-set-offset 'innamespace 0))
(add-hook 'c++-mode-hook 'my-c-mode-hook)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(setq org-latex-to-pdf-process (list "latexmk -pdf %f"))

(require 'recentf)
(setq recentf-max-saved-items 200
      recentf-max-menu-items 15)
(recentf-mode t)
