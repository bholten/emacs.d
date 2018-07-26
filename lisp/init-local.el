;;;; TWEAKS
;; Global linum mode
(global-linum-mode 1)

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
(load-theme 'material t)
(add-to-list 'default-frame-alist '(font . "Inconsolata"))
(set-face-attribute 'default t :font "Inconsolata")

(provide 'init-local)
