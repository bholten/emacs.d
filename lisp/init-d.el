;;; init-d.el --- DLang support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package d-mode)
(use-package company-dcd
  :hook (d-mode . company-dcd-mode))

(provide 'init-d)
;;; init-d.el ends here
