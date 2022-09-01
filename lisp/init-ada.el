;;; init-ada.el --- Ada support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'ada-mode)
  (package-install 'ada-mode))

(provide 'init-ada)
;;; init-ada.el ends here
