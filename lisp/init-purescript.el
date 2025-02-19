;;; init-purescript.el --- Purescript support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package purescript-mode)
(use-package psc-ide)
(add-hook 'purescript-mode-hook
  (lambda ()
    (psc-ide-mode)
    (company-mode)
    (flycheck-mode)
    (turn-on-purescript-indentation)))
(use-package psci)
(add-hook 'purescript-mode-hook 'inferior-psci-mode)

(provide 'init-purescript)
;;; init-purescript.el ends here
