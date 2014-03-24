(defun macosx-p()
  (string= "darwin" system-type))

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq indent-tabs-mode nil)
(setq require-final-newline t)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(require 'recentf)
(setq recentf-max-saved-items 200
      recentf-max-menu-items 15)
(recentf-mode t)

(add-hook 'text-mode-hook
	  (lambda () (set-input-method "german-postfix")))

(provide 'sometimesfood-basics)
