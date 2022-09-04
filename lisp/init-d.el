;;; init-d.el --- DLang support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'd-mode)
  (package-install 'd-mode))

(unless (package-installed-p 'company-dcd)
  (package-install 'company-dcd))

(add-hook 'd-mode-hook 'company-dcd-mode)

(provide 'init-d)
;;; init-d.el ends here
