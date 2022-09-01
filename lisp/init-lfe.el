;;; init-lfe.el --- Lisp Flavored Erlang support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'lfe-mode)
  (package-install 'lfe-mode))
(add-hook 'lfe-mode 'paredit-mode)

(provide 'init-lfe)
;;; init-lfe.el ends here
