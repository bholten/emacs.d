;;; init-lcl.el --- Lcl support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'lcl-ts-mode)
  (package-vc-install
   '(lcl-ts-mode :url "git@github.com:mazzilabs/tree-sitter-lcl.git"
                 :lisp-dir "editors/emacs")))

(use-package lcl-ts-mode
  :ensure nil)

(provide 'init-lcl)
;;; init-lcl.el ends here
