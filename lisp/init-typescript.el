;;; init-typescript.el --- Typescript support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'typescript-mode)
  (package-install 'typescript-mode))

(provide 'init-typescript)
;;; init-typescript.el ends here
