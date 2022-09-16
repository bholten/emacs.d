;;; init-window.el --- Configures the some window settings -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package switch-window
  :bind ("C-x o" . switch-window)
  :config
  (setq-default switch-window-shortcut-style 'alphabet)
  (setq-default switch-window-timeout nil))

(provide 'init-window)
;;; init-window.el ends here
