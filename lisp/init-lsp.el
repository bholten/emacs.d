;;; init-lsp.el --- LSP support via eglot -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'eglot)
  (package-install 'eglot))

(unless (package-installed-p 'consult-eglot)
  (package-install 'consult-eglot))

(provide 'init-lsp)
;;; init-lsp.el ends here
