;;; init-ocaml.el --- Support the OCaml language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(with-eval-after-load 'eglot
  (put 'tuareg-mode 'eglot-language-id "ocaml")
  (add-to-list 'eglot-server-programs '((tuareg-mode) . ("ocamllsp")) t))

(use-package tuareg)
(use-package dune)
(use-package dune-format)

(provide 'init-ocaml)
;;; init-ocaml.el ends here
