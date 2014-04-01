(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

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
(ensure-installed 'dired-single)

(provide 'sometimesfood-packages)
