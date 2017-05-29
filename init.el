;; (package-initialize)

(defvar sometimesfood-base-dir
  (file-name-directory load-file-name)
  "The base directory of this Emacs configuration.")

(add-to-list 'load-path
             (expand-file-name "modules" sometimesfood-base-dir))

(setq custom-file (expand-file-name "custom.el" sometimesfood-base-dir))
(load custom-file)

;; basic setup
(require 'sometimesfood-packages)
(require 'sometimesfood-basics)

;; misc
(require 'sometimesfood-appearance)
(require 'sometimesfood-dired)
(require 'sometimesfood-helm)
(require 'sometimesfood-keybindings)
(require 'sometimesfood-mouse)
(require 'sometimesfood-multiple-cursors)
(require 'sometimesfood-projectile)
(require 'sometimesfood-webdev)
(require 'sometimesfood-yasnippet)

;; programming languages
(require 'sometimesfood-bibtex)
(require 'sometimesfood-clojure)
(require 'sometimesfood-cpp)
(require 'sometimesfood-elisp)
(require 'sometimesfood-golang)
(require 'sometimesfood-haskell)
(require 'sometimesfood-orgmode)
(require 'sometimesfood-ruby)
