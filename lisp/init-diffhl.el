;;; init-diffhl.el --- diff-hl configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;; Indication of local VCS changes
(use-package diff-hl
  :hook (prog-mode . diff-hl-mode))

(provide 'init-diffhl)
;;; init-diffhl.el ends here
