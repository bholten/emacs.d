;;; init-magit.el --- Magit -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package magit
  :bind (("C-c g" . magit-status)))
(use-package magit-lfs)
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

;; Set the git-identity-list var to a list of identities
;; File hidden for privacy
;; (setq git-identity-list '(("personal.email@acme.com)))
(let ((file (expand-file-name "lisp/.git-identities.el" user-emacs-directory)))
  (when (file-exists-p file)
    (load-file file)))

(provide 'init-magit)
;;; init-magit.el ends here
