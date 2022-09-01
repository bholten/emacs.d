;;; init-vertico.el --- Vertico support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;;; Completion framework
(unless (package-installed-p 'vertico)
  (package-install 'vertico))

;; Enable completion by narrowing
(vertico-mode t)

;; Improve directory navigation
(with-eval-after-load 'vertico
  (define-key vertico-map (kbd "RET") #'vertico-directory-enter)
  (define-key vertico-map (kbd "DEL") #'vertico-directory-delete-word)
  (define-key vertico-map (kbd "M-d") #'vertico-directory-delete-char))

(provide 'init-vertico)
;;; init-vertico.el ends here
