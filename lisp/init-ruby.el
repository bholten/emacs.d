;;; init-ruby.el --- Support for the Ruby language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;; Basic ruby setup
(unless (package-installed-p 'ruby-hash-syntax)
  (package-install 'ruby-hash-syntax))
(unless (package-installed-p 'company-inf-ruby)
  (package-install 'company-inf-ruby))
(unless (package-installed-p 'rspec-mode)
  (package-install 'rspec-mode))
(unless (package-installed-p 'inf-ruby)
  (package-install 'inf-ruby))
(unless (package-installed-p 'robe)
  (package-install 'robe))
(unless (package-installed-p 'ruby-end)
  (package-install 'ruby-end))

(setq-default
 ruby-use-encoding-map nil
 ruby-insert-encoding-magic-comment nil)

(add-hook 'ruby-mode-hook 'subword-mode)

(with-eval-after-load 'page-break-lines
  (add-to-list 'page-break-lines-modes 'ruby-mode))

;;; Inferior ruby

;;; Robe
(when (package-installed-p 'robe)
  (with-eval-after-load 'ruby-mode
    (add-hook 'ruby-mode-hook 'robe-mode))
  (with-eval-after-load 'robe
    (with-eval-after-load 'company
      (add-to-list 'company-backends 'company-robe))))

(provide 'init-ruby)
;;; init-ruby.el ends here
