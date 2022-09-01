;;; init-magit.el --- Magit -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:


;;; Git client
(unless (package-installed-p 'magit)
  (package-install 'magit))

;; Bind the `magit-status' command to a convenient key.
(global-set-key (kbd "C-c g") #'magit-status)

(provide 'init-magit)
;;; init-magit.el ends here
