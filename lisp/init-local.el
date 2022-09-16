;;; init-local.el --- Local addititons -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package doom-themes)

(define-key emacs-lisp-mode-map
  (kbd "C-c C-c") #'eval-last-sexp)
(define-key lisp-interaction-mode-map
  (kbd "C-c C-c") #'eval-last-sexp)

(provide 'init-local)
;;; init-local.el ends here
