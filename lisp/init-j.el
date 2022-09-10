;;; init-j.el --- J support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'j-mode)
  (package-install 'j-mode))

(provide 'init-j)
;;; init-j.el ends here
