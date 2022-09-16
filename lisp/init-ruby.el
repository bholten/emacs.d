;;; init-ruby.el --- Support for the Ruby language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package ruby-hash-syntax)
(use-package company-inf-ruby)
(use-package rspec-mode)
(use-package inf-ruby)
(use-package robe)
(use-package ruby-end)

(setq-default
 ruby-use-encoding-map nil
 ruby-insert-encoding-magic-comment nil)

(add-hook 'ruby-mode-hook 'subword-mode)

(with-eval-after-load 'page-break-lines
  (add-to-list 'page-break-lines-modes 'ruby-mode))

;;; Robe
(when (package-installed-p 'robe)
  (with-eval-after-load 'ruby-mode
    (add-hook 'ruby-mode-hook 'robe-mode))
  (with-eval-after-load 'robe
    (with-eval-after-load 'company
      (add-to-list 'company-backends 'company-robe))))

(provide 'init-ruby)
;;; init-ruby.el ends here
