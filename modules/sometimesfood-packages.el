(setq package-archives
      '(("gnu"          . "https://elpa.gnu.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("melpa"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("melpa-stable" . 10)
        ("gnu"          . 5)
        ("melpa"        . 0)))

; use fixmelpa on Emacs <25
(when (< emacs-major-version 25)
  (add-to-list 'load-path
               (expand-file-name "submodules/fixmelpa" sometimesfood-base-dir))
  (require 'fixmelpa)
  (defadvice package-refresh-contents
      (before ad-fixmelpa-refresh-pinned-packages activate)
    "Refresh pinned packages before refreshing package contents."
    (fixmelpa-refresh-pinned-packages)))

(defun ensure-installed (package)
  "Check if package is installed, install it if not"
  (unless (package-installed-p package)
    (package-install package)))

(unless package-archive-contents
  (package-refresh-contents))

(ensure-installed 'solarized-theme)
(ensure-installed 'zenburn-theme)
(ensure-installed 'haskell-mode)
(ensure-installed 'magit)
(ensure-installed 'yasnippet)
(ensure-installed 'ledger-mode)
(ensure-installed 'markdown-mode)
(ensure-installed 'haml-mode)
(ensure-installed 'coffee-mode)
(ensure-installed 'scss-mode)
(ensure-installed 'yaml-mode)
(ensure-installed 'dired-single)
(ensure-installed 'go-mode)
(ensure-installed 'paredit)
(ensure-installed 'highlight-parentheses)
(ensure-installed 'cider)
(ensure-installed 'clojure-mode)
(ensure-installed 'gist)
(ensure-installed 'google-c-style)
(ensure-installed 'ggtags)
(ensure-installed 'dockerfile-mode)
(ensure-installed 'which-key)

(when (macos-p)
  (ensure-installed 'dash-at-point)
  (ensure-installed 'reveal-in-osx-finder))

(provide 'sometimesfood-packages)
