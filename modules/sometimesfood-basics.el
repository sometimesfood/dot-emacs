(defun macosx-p()
  (string= "darwin" system-type))

(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(add-to-list 'exec-path "/usr/local/bin")

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

;; chmod +x files that have a shebang
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

(defun add-to-auto-mode-alist (mode regexps)
  (mapcar
   (lambda (regexp)
     (add-to-list 'auto-mode-alist `(,regexp . ,mode)))
   regexps))

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(provide 'sometimesfood-basics)
