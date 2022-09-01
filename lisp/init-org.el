;;; init-org.el --- Org-Mode configuration -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;;; Outline-based notes management and organizer
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)

;;; Additional Org-mode related functionality
(unless (package-installed-p 'org-contrib)
  (package-install 'org-contrib))

(provide 'init-org)
;;; init-org.el ends here
