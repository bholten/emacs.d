;;; init-julia.el --- Julia support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'julia-mode)
  (package-install 'julia-mode))

(provide 'init-julia)
;;; init-julia.el ends here
