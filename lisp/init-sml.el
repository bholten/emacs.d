;; SML setup
(require-package 'sml-mode)

(defun bholten/sml-mode-hook ()
  (setq sml-indent-level 2)
  (setq words-include-escape t)
  (setq indent-tabs-mode nil))

(add-hook 'sml-mode-hook 'bholten/sml-mode-hook)

(defun bholten/inf-sml-mode-hook ()
  (add-hook 'comint-output-filter-functions 'comint-truncate-buffer)
  (setq     comint-scroll-show-maximum-output t)
  (setq     comint-input-autoexpand nil))

(add-hook 'inferior-sml-mode-hook 'bholten/inf-sml-mode-hook)

(provide 'init-sml)
