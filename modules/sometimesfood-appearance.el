(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(column-number-mode 1)

(if (macosx-p)
    (progn
      (set-default-font "Menlo-14")
      (menu-bar-mode 1))
  (menu-bar-mode -1))

(load-theme 'solarized-light t)

(provide 'sometimesfood-appearance)
