(use-package helm :ensure t :defer t)

(use-package helm-projectile
  :ensure t
  :defer t
  :init

  ;; source: https://github.com/bbatsov/prelude/blob/master/modules/prelude-helm.el
  (defun helm-prelude ()
    "Preconfigured `helm'."
    (interactive)
    (condition-case nil
        (if (projectile-project-root)
            (helm-projectile)
          ;; otherwise fallback to `helm-mini'
          (helm-mini))
      ;; fall back to helm mini if an error occurs (usually in
      ;; `projectile-project-root')
      (error (helm-mini)))))

(provide 'sometimesfood-helm)
