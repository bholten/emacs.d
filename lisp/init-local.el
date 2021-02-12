;;;; TWEAKS
;; Global linum mode
(global-linum-mode 1)

;; use-package
;; install from melpa if not found
(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/site-lisp/use-package")
  (require 'use-package))

(use-package dired-sidebar
  :bind (("C-x C-n" . dired-sidebar-toggle-sidebar))
  :ensure t
  :commands (dired-sidebar-toggle-sidebar)
  :init
  (add-hook 'dired-sidebar-mode-hook
            (lambda ()
              (unless (file-remote-p default-directory)
                (auto-revert-mode))))
  :config
  (push 'toggle-window-split dired-sidebar-toggle-hidden-commands)
  (push 'rotate-windows dired-sidebar-toggle-hidden-commands)

  (setq dired-sidebar-subtree-line-prefix "__")
  (setq dired-sidebar-use-term-integration t)
  (setq dired-sidebar-use-custom-font t))

;;;; ORG-MODE
;; HTMLize for org-mode
(require-package 'htmlize)

;; Set org mode to pretty-print code blocks
(setq org-src-fontify-natively t)

;; Ruby Environment Manager
(require-package 'rvm)
(rvm-use-default)

;;;; COSMETIC STUFF
;; At the end on purpose, if anything goes wrong the theme/fonts will
;; be wrong
(require-package 'material-theme)
(require-package 'kaolin-themes)

(load-theme 'kaolin-light t)

(add-to-list 'default-frame-alist '(font . "Inconsolata-18"))
(set-face-attribute 'default t :font "Inconsolata-18")

(provide 'init-local)
