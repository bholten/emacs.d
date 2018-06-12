(require-package 'blackboard-theme)
;; Blackboard theme
(load-theme 'blackboard t)

;; Global linum mode
(global-linum-mode 1)

;; Set the default font
(add-to-list 'default-frame-alist '(font . "Inconsolata"))
(set-face-attribute 'default t :font "Inconsolata")

(provide 'init-local)
