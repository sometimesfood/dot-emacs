(defun macos-p ()
  (string= "darwin" system-type))

(defun gui-p ()
  (not (null window-system)))

(defun add-to-path (path)
  (setenv "PATH" (concat path ":" (getenv "PATH")))
  (add-to-list 'exec-path path))

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

(ido-mode 1)
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

;; chmod +x files that have a shebang
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

(defun add-to-auto-mode-alist (mode regexps)
  (mapcar
   (lambda (regexp)
     (add-to-list 'auto-mode-alist `(,regexp . ,mode)))
   regexps))

(add-to-path "/usr/local/bin")
(add-to-path "~/go/bin")
(add-to-path "~/bin")

(when (macos-p)
  (add-to-path "/Library/TeX/texbin")
  (setq insert-directory-program (executable-find "gls")))

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(electric-pair-mode)

(defun add-local-hook (hook function)
  (add-hook hook function nil t))

;; enable narrow-to-region
(put 'narrow-to-region 'disabled nil)

(add-hook 'prog-mode-hook
          (lambda ()
            (ggtags-mode 1)))

(setq tab-always-indent 'complete)

(provide 'sometimesfood-basics)
