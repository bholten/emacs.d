;;; init-consult.el --- Consult configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'consult)
  (package-install 'consult))
(global-set-key [rebind switch-to-buffer] #'consult-buffer)
(global-set-key (kbd "C-c j") #'consult-line)
(global-set-key (kbd "C-c i") #'consult-imenu)

(provide 'init-consult)
;;; init-consult.el ends here
