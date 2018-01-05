(use-package multiple-cursors :ensure t :defer t
  :bind (("C-x r t" . mc/edit-lines)
         ("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("C-c C-<" . mc/mark-all-like-this)))

(provide 'sometimesfood-multiple-cursors)
