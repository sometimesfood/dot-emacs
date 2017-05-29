(setq package-enable-at-startup nil)

(setq package-archives
      '(("gnu"          . "https://elpa.gnu.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("melpa"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("melpa-stable" . 10)
        ("gnu"          . 5)
        ("melpa"        . 0)))

(package-initialize)

; use fixmelpa on Emacs <25
(when (< emacs-major-version 25)
  (add-to-list 'load-path
               (expand-file-name "submodules/fixmelpa" sometimesfood-base-dir))
  (require 'fixmelpa)
  (defadvice package-refresh-contents
      (before ad-fixmelpa-refresh-pinned-packages activate)
    "Refresh pinned packages before refreshing package contents."
    (fixmelpa-refresh-pinned-packages)))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package solarized-theme :ensure t :defer t)
(use-package zenburn-theme :ensure t :defer t :no-require t)
(use-package haskell-mode :ensure t :defer t)
(use-package magit :ensure t :defer t)
(use-package yasnippet :ensure t :defer t)
(use-package ledger-mode :ensure t :defer t)
(use-package markdown-mode :ensure t :defer t)
(use-package haml-mode :ensure t :defer t)
(use-package coffee-mode :ensure t :defer t)
(use-package scss-mode :ensure t :defer t)
(use-package yaml-mode :ensure t :defer t)
(use-package dired-single :ensure t :defer t)
(use-package go-mode :ensure t :defer t)
(use-package paredit :ensure t :defer t)
(use-package highlight-parentheses :ensure t :defer t)
(use-package cider :ensure t :defer t)
(use-package clojure-mode :ensure t :defer t)
(use-package gist :ensure t :defer t)
(use-package google-c-style :ensure t :defer t)
(use-package ggtags :ensure t :defer t)
(use-package dockerfile-mode :ensure t :defer t)
(use-package which-key :ensure t :defer t)
(use-package tex :ensure auctex :defer t)

;; ;; disable macOS stuff for now (circular dependency between
;; ;; sometimesfood-packages and sometimesfood-basics because of macos-p)
;; (use-package dash-at-point :ensure t :defer t :if (macos-p))
;; (use-package reveal-in-osx-finder :ensure t :defer :if (macos-p))

(provide 'sometimesfood-packages)
