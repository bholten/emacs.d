;;; init-ocaml.el --- Support the OCaml language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(with-eval-after-load 'eglot
  (put 'tuareg-mode 'eglot-language-id "ocaml")
  (add-to-list 'eglot-server-programs '((tuareg-mode) . ("ocamllsp")) t))

(unless (package-installed-p 'tuareg)
  (package-install 'tuareg))

(unless (package-installed-p 'dune)
  (package-install 'dune))

(unless (package-installed-p 'dune-format)
  (package-install 'dune-format))

(provide 'init-ocaml)
;;; init-ocaml.el ends here
