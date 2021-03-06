(setq package-enable-at-startup nil)

(setq package-archives
      '(("gnu"          . "https://elpa.gnu.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("melpa"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("melpa-stable" . 10)
        ("gnu"          . 5)
        ("melpa"        . 0)))

; disable TLS 1.3 to work around #34341; see
; https://debbugs.gnu.org/cgi/bugreport.cgi?bug=34341 for reference
(if (version< emacs-version "26.3")
    (setq gnutls-algorithm-priority "normal:-vers-tls1.3"))

(package-initialize)

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
(use-package ggtags :ensure t :defer t)
(use-package dockerfile-mode :ensure t :defer t)
(use-package which-key :ensure t :defer t)
(use-package tex :ensure auctex :defer t)

(use-package dash-at-point :ensure t :defer t :if (macos-p))
(use-package reveal-in-osx-finder :ensure t :defer :if (macos-p))

(provide 'sometimesfood-packages)
