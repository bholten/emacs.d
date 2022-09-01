;;; init-editing.el --- Day-to-day editing helpers -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(unless (package-installed-p 'move-dup)
  (package-install 'move-dup))

(global-set-key (kbd "C-c u") 'move-dup-move-lines-up)
(global-set-key (kbd "C-c d") 'move-dup-move-lines-down)

(unless (package-installed-p 'multiple-cursors)
  (package-install 'multiple-cursors))

;; multiple-cursors
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-+") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


(provide 'init-editing)
;;; init-editing.el ends here
