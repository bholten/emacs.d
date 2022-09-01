;;; init-json.el --- Json support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;; JSON Support
(unless (package-installed-p 'json-mode)
  (package-install 'json-mode))

(provide 'init-json)
;;; init-json.el ends here
