;;; init-lfe.el --- Lisp Flavored Erlang support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package lfe-mode
  :mode "\\.lfe"
  :hook paredit-mode)

(provide 'init-lfe)
;;; init-lfe.el ends here
