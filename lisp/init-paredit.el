;;; init-paredit.el --- Paredit support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package paredit
 :init
 (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
 :hook
 ((emacs-list-mode
   eval-expression-minibuffer-setup
   ielm-mode
   lisp-mode
   lisp-interaction-mode
   scheme-mode) . enable-paredit-mode))

(provide 'init-paredit)
;;; init-paredit.el ends here
