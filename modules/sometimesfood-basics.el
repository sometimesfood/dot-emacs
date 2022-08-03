(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq-default indent-tabs-mode nil)
(setq require-final-newline t)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(use-package recentf
  :init
  (setq recentf-max-saved-items 2000)
  (setq recentf-max-menu-items 15)
  :config
  (recentf-mode t))

(savehist-mode 1)
(setq savehist-additional-variables
      '(kill-ring search-ring regexp-search-ring))
(setq savehist-file
      (expand-file-name "tmp/savehist" sometimesfood-base-dir))
(setq history-length 10000)

;; Note: ffap mode for ido-find-file can be enabled using
;; (setq ido-use-filename-at-point 'guess)

(ido-mode 'buffers)
(setq ido-ignore-buffers
      '("\\` " "^\*Messages" "^\*Back" "^\*Compile" "^\*helm" "^\*Completion"))

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

;; stop cluttering ~/.emacs.d/auto-save-list
(setq auto-save-list-file-prefix "~/.emacs.d/backups/auto-save-list/.saves-")

;; chmod +x files that have a shebang
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

(add-to-path "/usr/local/bin")
(add-to-path "~/go/bin")
(add-to-path "~/bin")

(when (macos-p)
  (add-to-path "/Library/TeX/texbin")
  (setq insert-directory-program (executable-find "gls")))

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(electric-pair-mode)

;; enable narrow-to-region
(put 'narrow-to-region 'disabled nil)

(setq tab-always-indent 'complete)

(provide 'sometimesfood-basics)
