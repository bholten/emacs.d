;;; init-local.el --- Local addititons -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package doom-themes)
(use-package acme-theme)

(define-key emacs-lisp-mode-map
	    (kbd "C-c C-c") #'eval-last-sexp)
(define-key lisp-interaction-mode-map
  (kbd "C-c C-c") #'eval-last-sexp)

(provide 'init-local)
;;; init-local.el ends here
