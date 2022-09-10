;;; init-go.el --- Go support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'go-mode)
  (package-install 'go-mode))

(provide 'init-go)
;;; init-go.el ends here
