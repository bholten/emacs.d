;;; init-lsp.el --- LSP support via eglot -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package project)
(use-package eglot :defer t)
(use-package consult-eglot)

(use-package yasnippet)
(yas-global-mode 1)

(provide 'init-lsp)
;;; init-lsp.el ends here
