;;; init-raku.el --- Raku support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;;; Raku Support
(unless (package-installed-p 'raku-mode)
  (package-install 'raku-mode))

(provide 'init-raku)
;;; init-raku.el ends here
