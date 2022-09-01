;;; init-php.el --- PHP support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;;; PHP Support
(unless (package-installed-p 'php-mode)
  (package-install 'php-mode))

(provide 'init-php)
;;; init-php.el ends here
