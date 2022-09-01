;;; init-sml.el --- Standard ML support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;;; Standard ML Support
(unless (package-installed-p 'sml-mode)
  (package-install 'sml-mode))

(provide 'init-sml)
;;; init-sml.el ends here
