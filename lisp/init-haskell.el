;;; init-haskell.el --- Haskell support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'haskell-mode)
  (package-install 'haskell-mode))

(add-hook 'haskell-mode-hook 'subword-mode)
(add-hook 'haskell-cabal-mode 'subword-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;; Indentation
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;; Source code helpers
(add-hook 'haskell-mode-hook 'haskell-auto-insert-module-template)

(provide 'init-haskell)
;;; init-haskell.el ends here
