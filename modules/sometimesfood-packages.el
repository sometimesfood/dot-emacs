(add-to-list 'load-path
             (expand-file-name "elisp/cask" sometimesfood-base-dir))
(require 'cask)
(cask-initialize)
(package-initialize)

(provide 'sometimesfood-packages)
