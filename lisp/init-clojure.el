;;; init-clojure.el --- Clojure support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package clojure-mode)
(use-package cljsbuild-mode)
(use-package elein)
(use-package cider
  :hook
  (cider-repl-mode . paredit-mode)
  (cider-repl-mode . rainbow-delimiters-mode))

(provide 'init-clojure)
;;; init-clojure.el ends here


