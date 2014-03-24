(setq c-default-style "linux"
      c-basic-offset 4)

(add-hook 'c++-mode-hook
	  (lambda ()
	    (setq indent-tabs-mode nil)
	    (c-set-offset 'innamespace 0)))

(provide 'sometimesfood-cpp)
