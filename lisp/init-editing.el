;;; init-editing.el --- Day-to-day editing helpers -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package move-dup
  :bind (("C-c u" . move-dup-move-lines-up)
	 ("C-c d" . move-dup-move-lines-down)))

(unless (package-installed-p 'multiple-cursors)
  (package-install 'multiple-cursors))

(use-package multiple-cursors
  :bind (("C-<" . mc/mark-previous-like-this)
	 ("C->" . mc/mark-next-like-this)
	 ("C-+" . mc/mark-next-like-this)
	 ("C-c C-<" . mc/mark-all-like-this)))

(use-package diminish)

(use-package auctex)

(use-package vterm
  :ensure t)

(use-package which-key
  :config (setq-default which-key-idle-delay 1.5)
  :init (which-key-mode))

(provide 'init-editing)
;;; init-editing.el ends here
