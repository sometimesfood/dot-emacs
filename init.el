(defvar sometimesfood-base-dir
  (file-name-directory load-file-name)
  "The base directory of this Emacs configuration.")

(add-to-list 'load-path
             (expand-file-name "modules" sometimesfood-base-dir))

(require 'sometimesfood-packages)
(require 'sometimesfood-basics)
(require 'sometimesfood-appearance)
(require 'sometimesfood-keybindings)

;; programming languages
(require 'sometimesfood-cpp)
(require 'sometimesfood-haskell)
