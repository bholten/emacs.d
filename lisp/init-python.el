;;; init-python.el --- Python support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package elpy
  :ensure t
  :init (elpy-enable)
  :config (setq python-shell-interpreter "ipython"
		python-shell-interpreter-args "-i --simple-prompt"))

(provide 'init-python)
;;; init-python.el ends here
