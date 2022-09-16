;;; init-latex.el --- LaTeX support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package auctex
  :config
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq-default TeX-master nil))

;; Enable LaTeX math support
(add-hook 'LaTeX-mode-map #'LaTeX-math-mode)

;; Enable reference mangment
(add-hook 'LaTeX-mode-map #'reftex-mode)

(provide 'init-latex)
;;; init-latex.el ends here
