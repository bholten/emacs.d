;;; init-k8s.el --- Kubernetes support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package kubernetes
  :ensure t
  :commands (kubernetes-overview)
  :config
  (setq kubernetes-poll-frequency 3600
        kubernetes-redraw-frequency 3600))

(provide 'init-k8s)

;;; init-k8s.el ends here
