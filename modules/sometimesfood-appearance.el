(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(column-number-mode 1)
(setq show-trailing-whitespace t)

(if (and (macos-p) (gui-p))
    (progn
      (add-to-list 'default-frame-alist '(font . "Menlo-14"))
      (menu-bar-mode 1))
  (menu-bar-mode -1))

(load-theme 'solarized-light t)

(which-key-setup-side-window-right-bottom)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(provide 'sometimesfood-appearance)
