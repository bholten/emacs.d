;;; init-csharp.el --- C# support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;; C# Support
(unless (package-installed-p 'csharp-mode)
  (package-install 'csharp-mode))

(provide 'init-csharp)
;;; init-csharp.el ends here
