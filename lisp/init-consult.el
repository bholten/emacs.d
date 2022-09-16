;;; init-consult.el --- Consult configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package consult
  :init (global-set-key [rebind switch-to-buffer] #'consult-buffer)
  :bind (("C-c j" . consult-line)
	 ("C-c i" . consult-imenu)))

(provide 'init-consult)
;;; init-consult.el ends here
