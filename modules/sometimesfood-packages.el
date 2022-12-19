(setq package-enable-at-startup nil)

(setq package-archives
      '(("melpa-stable" . "https://stable.melpa.org/packages/")
        ("gnu"          . "https://elpa.gnu.org/packages/")
        ("nongnu"       . "https://elpa.nongnu.org/nongnu/")
        ("melpa"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("melpa-stable" . 20)
        ("gnu"          . 10)
        ("nongnu"       . 5)
        ("melpa"        . 0)))

;; disable TLS 1.3 to work around #34341 and #54096 if necessary, see
;; https://debbugs.gnu.org/cgi/bugreport.cgi?bug=34341 and
;; https://debbugs.gnu.org/cgi/bugreport.cgi?bug=54096 for reference
(when
    (or (and (>= libgnutls-version 30603)
             (version< emacs-version "26.3"))
        (and (macos-p)
             (version= emacs-version "27.2")))
  (setq gnutls-algorithm-priority "normal:-vers-tls1.3"))


(when (< emacs-major-version 27)
  (package-initialize))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package magit :ensure t :defer t)
(use-package ledger-mode :ensure t :defer t)
(use-package markdown-mode :ensure t :defer t)
(use-package yaml-mode :ensure t :defer t)
(use-package dired-single :ensure t :defer t)
(use-package paredit :ensure t :defer t)
(use-package highlight-parentheses :ensure t :defer t)
(use-package htmlize :ensure t :defer t)
(use-package terraform-mode :ensure t :defer t)
(use-package jinja2-mode :ensure t :defer t)
(use-package gist :ensure t :defer t)
(use-package google-c-style :ensure t :defer t)
(use-package dockerfile-mode :ensure t :defer t)
(use-package which-key :ensure t :defer t)
(use-package tex :ensure auctex :defer t)
(use-package deadgrep :ensure t :defer t)
(use-package dash-at-point :ensure t :defer t :if (macos-p))
(use-package reveal-in-osx-finder :ensure t :defer :if (macos-p))
(use-package nftables-mode :ensure t :defer t)
(use-package dumb-jump
  :ensure t
  :defer t
  :init
  (add-hook 'xref-backend-functions #'dumb-jump-xref-activate))

(provide 'sometimesfood-packages)
