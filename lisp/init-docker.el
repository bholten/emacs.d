;;; init-docker.el --- Docker support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'docker)
  (package-install 'docker))
(unless (package-installed-p 'dockerfile-mode)
  (package-install 'dockerfile-mode))
(unless (package-installed-p 'docker-compose-mode)
  (package-install 'docker-compose-mode))

(when (package-installed-p 'docker)
  (fullframe docker-images tablist-quit)
  (fullframe docker-machines tablist-quit)
  (fullframe docker-volumes tablist-quit)
  (fullframe docker-networks tablist-quit)
  (fullframe docker-containers tablist-quit))

(provide 'init-docker)
;;; init-docker.el ends here
