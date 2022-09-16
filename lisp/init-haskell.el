;;; init-haskell.el --- Haskell support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package haskell-mode
  :hook
  (haskell-mode . subword-mode)
  (haskell-cabal-mode . subword-mode)
  (haskell-mode . interactive-haskell-mode)
  (haskell-mode . turn-on-haskell-indentation)
  (haskell-mode . haskell-auto-insert-module-template))

(provide 'init-haskell)
;;; init-haskell.el ends here
