(require-package 'ensime)
(require-package 'sbt-mode)
(require-package 'scala-mode)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(provide 'init-scala)
