;;; init-elixir.el --- Elixir support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'elixir-mode)
  (package-install 'elixir-mode))

(provide 'init-elixir)
;;; init-elixir.el ends here
