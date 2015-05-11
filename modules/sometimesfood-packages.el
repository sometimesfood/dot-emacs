(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; pin packages to stable MELPA version if possible
(add-to-list 'load-path
             (expand-file-name "submodules/fixmelpa" sometimesfood-base-dir))
(require 'fixmelpa)
(defadvice package-refresh-contents
    (before ad-fixmelpa-refresh-pinned-packages activate)
  "Refresh pinned packages before refreshing package contents."
  (fixmelpa-refresh-pinned-packages))

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

(when (macosx-p)
  (ensure-installed 'dash-at-point))

(provide 'sometimesfood-packages)
