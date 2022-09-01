;;; init-nasm.el --- NASM support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;;; NASM Support
(unless (package-installed-p 'nasm-mode)
  (package-install 'nasm-mode))

(provide 'init-nasm)
;;; init-nasm.el ends here
