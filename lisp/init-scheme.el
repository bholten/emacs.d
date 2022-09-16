;;; init-scheme.el --- Support for the Scheme languages -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package geiser)
(use-package racket-mode
  :hook paredit-mode)

(add-hook 'scheme-mode 'paredit-mode)

(provide 'init-scheme)

;;; init-scheme.el ends here
