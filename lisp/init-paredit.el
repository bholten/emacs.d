;;; init-paredit.el --- Paredit support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package paredit
 :hook
 ((emacs-lisp-mode
   eval-expression-minibuffer-setup
   ielm-mode
   lisp-mode
   lisp-interaction-mode
   scheme-mode
   clojure-mode) . enable-paredit-mode))

(provide 'init-paredit)
;;; init-paredit.el ends here
