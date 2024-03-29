;;; init-docker.el --- Docker support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package docker
  :after (fullframe)
  :init
  (fullframe docker-images tablist-quit)
  (fullframe docker-machines tablist-quit)
  (fullframe docker-volumes tablist-quit)
  (fullframe docker-networks tablist-quit)
  (fullframe docker-containers tablist-quit)
  (setq docker-compose-command "docker compose"))

(use-package dockerfile-mode)
(use-package docker-compose-mode)

(provide 'init-docker)
;;; init-docker.el ends here
