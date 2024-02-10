;;; init-julia.el --- Julia support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package julia-mode
  :ensure t)

(use-package julia-repl
  :ensure t
  :hook (julia-mode . julia-repl-mode)

  :init
  (setenv "JULIA_NUM_THREADS" "8")

  :config
  ;; Set the terminal backend
  (julia-repl-set-terminal-backend 'vterm))

(provide 'init-julia)
;;; init-julia.el ends here
