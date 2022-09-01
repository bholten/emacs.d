;;; init-kotlin.el --- Kotlin support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;; Kotlin Support
(unless (package-installed-p 'kotlin-mode)
  (package-install 'kotlin-mode))

(provide 'init-kotlin)
;;; init-kotlin.el ends here
