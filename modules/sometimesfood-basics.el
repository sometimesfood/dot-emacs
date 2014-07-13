(defun macosx-p()
  (string= "darwin" system-type))

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq-default indent-tabs-mode nil)
(setq require-final-newline t)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(require 'recentf)
(setq recentf-max-saved-items 200
      recentf-max-menu-items 15)
(recentf-mode t)

(add-hook 'text-mode-hook
          (lambda () (set-input-method "german-postfix")))

(iswitchb-mode 1)
(setq iswitchb-buffer-ignore '("^ " "*Completions*" "*Messages*"))
;; check out icomplete-show-matches-on-no-input on Emacs 24.4
;; (icomplete-mode 1)

(setq ring-bell-function (lambda () (message "*beep*")))

;; auto refresh buffers, but be quiet about it
(global-auto-revert-mode 1)
(setq auto-revert-verbose nil)

;; create backup files in a single location, keep some old versions
(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.emacs.d/backups"))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(defun add-to-auto-mode-alist (mode regexps)
  (mapcar
   (lambda (regexp)
     (add-to-list 'auto-mode-alist `(,regexp . ,mode)))
   regexps))

(provide 'sometimesfood-basics)
