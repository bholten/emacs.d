;;; init-yaml.el --- YAML support -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'yaml-mode)
  (package-install 'yaml-mode))

(provide 'init-yaml)
;;; init-yaml.el ends here
