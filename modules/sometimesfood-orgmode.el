(setq org-export-allow-bind-keywords t)
(setq org-ellipsis "⤵")
(setq org-clock-idle-time 10)
(setq org-startup-indented t)
(setq org-startup-folded t)

(with-eval-after-load 'org
;  (modify-syntax-entry ?/ "(/" org-mode-syntax-table)
  (modify-syntax-entry ?= "(=" org-mode-syntax-table))

;; reftex
(setq reftex-cite-format
      '((?\C-m . "\\autocite[]{%l}")
        (?f . "\\footcite[][]{%l}")
        (?t . "\\textcite[]{%l}")
        (?p . "\\parencite[]{%l}")
        (?o . "\\citepr[]{%l}")
        (?n . "\\nocite{%l}")))
(setq reftex-sort-bibtex-matches 'author)

(add-hook 'org-mode-hook
          (lambda () (electric-indent-local-mode -1)))

(use-package org-contrib
  :ensure t
  :config
  (require 'ob-ledger)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((shell . t) (ledger . t) (emacs-lisp . t))))

(provide 'sometimesfood-orgmode)
