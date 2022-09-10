;;; init-lua.el --- Lua support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'lua-mode)
  (package-install 'lua-mode))

(provide 'init-lua)
;;; init-lua.el ends here
