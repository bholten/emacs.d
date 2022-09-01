;;; init-magit.el --- Magit -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:


;;; Git client
(unless (package-installed-p 'magit)
  (package-install 'magit))

;; Bind the `magit-status' command to a convenient key.
(global-set-key (kbd "C-c g") #'magit-status)


(unless (package-installed-p 'magit-lfs)
  (package-install 'magit-lfs))

(require 'magit-lfs)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(use-package git-identity
  :after magit
  :config
  (git-identity-magit-mode 1)
  ;; Bind I to git-identity-info in magit-status
  (define-key magit-status-mode-map (kbd "I") 'git-identity-info)
  :custom
  ;; Warn if the global identity setting violates your policy
  (git-identity-verify t)
  ;; The default user name
  (git-identity-default-username "Brennan Holten"))

;; And set git-identity-list in your custom-file or init file
(load-file (expand-file-name "lisp/.git-identities.el" user-emacs-directory))
(setq git-identity-list *identity-list*)

(provide 'init-magit)
;;; init-magit.el ends here
