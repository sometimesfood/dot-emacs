(use-package org-roam
  :ensure t
  :defer t
  :hook 
  (after-init . org-roam-mode)
  :custom
  (org-roam-directory "~/org-roam/")
  :bind (:map org-roam-mode-map
              (("C-c n l" . org-roam)
               ("C-c n f" . org-roam-find-file)
               ("C-c n g" . org-roam-show-graph))
              :map org-mode-map
              (("C-c n i" . org-roam-insert))))

(provide 'sometimesfood-org-roam)
