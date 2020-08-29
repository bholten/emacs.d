;;; init-cpp.el --- C/C++ support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'irony)
(require-package 'company-irony)
(require-package 'flycheck-irony)
(require-package 'company-c-headers)
(require-package 'meson-mode)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(provide 'init-cpp)
;;; init-cpp.el ends here
