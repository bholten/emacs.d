;;; init-local.el --- Local addititons -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'doom-themes)
  (package-install 'doom-themes))
(unless (package-installed-p 'htmlize)
  (package-install 'htmlize))

(defun print-to-browser ()
  (interactive)
  (browse-url-of-buffer (htmlize-buffer)))

(define-key emacs-lisp-mode-map
  (kbd "C-c C-c") #'eval-last-sexp)
(define-key lisp-interaction-mode-map
  (kbd "C-c C-c") #'eval-last-sexp)

(provide 'init-local)
;;; init-local.el ends here
