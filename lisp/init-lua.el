;;; init-lua.el --- Lua support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package lua-mode)
(use-package company-lua)

(defun my-lua-mode-company-init ()
  (setq-local company-backends '((company-lua
                                  company-etags
                                  company-dabbrev-code
                                  company-yasnippet))))
(add-hook 'lua-mode-hook #'my-lua-mode-company-init)

(provide 'init-lua)
;;; init-lua.el ends here
