;;; init-lsp.el --- LSP support via eglot -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;;; LSP Support
(unless (package-installed-p 'eglot)
  (package-install 'eglot))

(unless (package-installed-p 'consult-eglot)
  (package-install 'consult-eglot))

;; Enable LSP support by default in programming buffers
(add-hook 'prog-mode-hook #'eglot-ensure)

(provide 'init-lsp)
;;; init-lsp.el ends here
