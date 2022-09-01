;;; init-window.el --- Configures the some window settings -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'switch-window)
  (package-install 'switch-window))

(setq-default switch-window-shortcut-style 'alphabet)
(setq-default switch-window-timeout nil)
(global-set-key (kbd "C-x o") 'switch-window)

(provide 'init-window)
;;; init-window.el ends here
