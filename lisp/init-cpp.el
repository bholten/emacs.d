;;; init-cpp.el --- C/C++ configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(use-package irony)

(use-package company-irony
  :init (add-to-list 'company-backends 'company-irony))

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(provide 'init-cpp)
;;; init-cpp.el ends here
