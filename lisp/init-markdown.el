;;; init-markdown.el --- Markdown support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;;; Markdown support
(unless (package-installed-p 'markdown-mode)
  (package-install 'markdown-mode))

(provide 'init-markdown)
;;; init-markdown.el ends here
