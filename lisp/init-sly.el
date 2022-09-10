;;; init-sly.el --- Sly for Common Lisp -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'sly)
  (package-install 'sly))

(provide 'init-sly)
;;; init-sly.el ends ehre
