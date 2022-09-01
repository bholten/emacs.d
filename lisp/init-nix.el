;;; init-nix.el --- Support for the Nix package manager -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'nix-mode)
  (package-install 'nix-mode))
(unless (package-installed-p 'nixpkgs-fmt)
  (package-install 'nixpkgs-fmt))
(unless (package-installed-p 'nix-sandbox)
  (package-install 'nix-sandbox))
(unless (package-installed-p 'nix-buffer)
  (package-install 'nix-buffer))

(provide 'init-nix)
;;; init-nix.el ends here

