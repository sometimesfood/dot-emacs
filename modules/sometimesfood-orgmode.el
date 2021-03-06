(setq org-export-allow-bind-keywords t)
(setq org-ellipsis "⤵")
(setq org-clock-idle-time 10)

(setq org-clock-idle-time 10)

;; reftex
(setq reftex-cite-format
      '((?\C-m . "\\autocite[]{%l}")
        (?f . "\\footcite[][]{%l}")
        (?t . "\\textcite[]{%l}")
        (?p . "\\parencite[]{%l}")
        (?o . "\\citepr[]{%l}")
        (?n . "\\nocite{%l}")))
(setq reftex-sort-bibtex-matches 'author)

(provide 'sometimesfood-orgmode)
