;;; init-diffhl.el --- diff-hl configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;;; Indication of local VCS changes
(unless (package-installed-p 'diff-hl)
  (package-install 'diff-hl))

;; Enable `diff-hl' support by default in programming buffers
(add-hook 'prog-mode-hook #'diff-hl-mode)

(provide 'init-diffhl)
;;; init-diffhl.el ends here
