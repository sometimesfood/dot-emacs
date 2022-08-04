(setq plantuml-default-exec-mode 'jar)

(if (macos-p)
    (setq plantuml-jar-path
          "/usr/local/Cellar/plantuml/1.2022.6/libexec/plantuml.jar"))

(provide 'sometimesfood-plantuml)
