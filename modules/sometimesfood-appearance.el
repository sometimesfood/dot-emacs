(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(column-number-mode 1)
(setq show-trailing-whitespace t)

(if (and (macos-p) (gui-p))
    (progn
      (set-face-font 'default "Menlo-14")
      (set-face-font 'variable-pitch "Geneva")
      (menu-bar-mode 1))
  (menu-bar-mode -1))

(load-theme 'solarized-light t)

(which-key-setup-side-window-right-bottom)

(use-package uniquify
  :init
  (setq uniquify-buffer-name-style 'forward))

(provide 'sometimesfood-appearance)
