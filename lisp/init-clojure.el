;;; init-clojure.el --- Clojure support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'clojure-mode)
  (package-install 'clojure-mode))
(unless (package-installed-p 'cljsbuild-mode)
  (package-install 'cljsbuild-mode))
(unless (package-installed-p 'elein)
  (package-install 'elein))
(unless (package-installed-p 'cider)
  (package-install 'cider))

(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

(provide 'init-clojure)
;;; init-clojure.el ends here


