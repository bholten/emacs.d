;;; init-d.el --- DLang support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package d-mode
  :init (with-eval-after-load 'eglot
	  (add-to-list 'eglot-server-programs
		       '(d-mode . ("~/.local/bin/serve-d")))))
;;(use-package company-dcd)

(provide 'init-d)
;;; init-d.el ends here
