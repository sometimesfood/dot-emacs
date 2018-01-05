(use-package cider
  :ensure t
  :defer t
  :config
  (add-hook 'cider-mode-hook #'eldoc-mode))

(use-package clojure-mode :ensure t :defer t)

(provide 'sometimesfood-clojure)
