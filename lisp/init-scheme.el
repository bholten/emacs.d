;;; init-scheme.el --- Support for the Scheme languages -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'geiser)
  (package-install 'geiser))

(unless (package-installed-p 'racket-mode)
  (package-install 'racket-mode))

(add-hook 'scheme-mode 'paredit-mode)
(add-hook 'racket-mode 'paredit-mode)

(provide 'init-scheme)

;;; init-scheme.el ends here
