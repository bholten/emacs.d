;;; Personal configuration -*- lexical-binding: t -*-

(require 'package)
(add-to-list 'package-archives '( "melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives  '("nongnu" . "https://elpa.nongnu.org/nongnu/"))
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; Enable defer and ensure by default for use-package
;; Keep auto-save/backup files separate from source code:  https://github.com/scalameta/metals/issues/1027
(setq use-package-always-defer t
      use-package-always-ensure t
      backup-directory-alist `((".*" . ,temporary-file-directory))
      auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

(use-package exec-path-from-shell
  :ensure t)
(exec-path-from-shell-initialize)

(use-package fullframe)
(fullframe list-packages quit-window)

;; Disable the tool bar
(tool-bar-mode -1)

;; Disable the scroll bars
(scroll-bar-mode -1)

;; Disable GUI features
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-screen t)

(setq-default
 window-resize-pixelwise t
 frame-resize-pixelwise t)
(use-package default-text-scale
  :init (default-text-scale-mode))

;; Enable line numbering in `prog-mode'
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; Automatically pair parentheses
(electric-pair-mode t)

;; Enabled inline static analysis
(add-hook 'prog-mode-hook #'flymake-mode)

;;; Pop-up auto-completion
(use-package company
  :init (global-company-mode))
(use-package company-quickhelp
  :init (company-quickhelp-mode))

;; Enable Company by default in programming buffers
(add-hook 'prog-mode-hook #'company-mode)

;;; EditorConfig support
(use-package editorconfig)

;; Enable EditorConfig
(editorconfig-mode t)

;; recent-mode
(add-hook 'after-init-hook 'recentf-mode)
(setq-default
 recentf-max-saved-items 1000
 recentf-exclude `("/tmp/" "/ssh:" ,(concat package-user-dir "/.*-autoloads\\.el\\'")))

;; mmm-mode
(use-package mmm-mode)
(require 'mmm-auto)
(setq mmm-global-mode 'buffers-with-submode-classes)
(setq mmm-submode-decoration-level 2)

;; rainbow parens
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

;; hippie-expand
(global-set-key (kbd "M-/") 'hippie-expand)

(setq hippie-expand-try-functions-list
      '(try-complete-file-name-partially
        try-complete-file-name
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill))

;; Undo
(use-package undo-tree
  :init (global-undo-tree-mode)
  :config
  (setq undo-tree-visualizer-diff nil
	undo-tree-auto-save-history nil))

;; Control backup files
(setq delete-autosafe-files t ;; Deletes buffer autosave file when saved or exited.
      version-control t       ;; Use version numbers for backups.
      kept-new-versions 10    ;; Number of newest versions to keep.
      kept-old-versions 0     ;; Number of oldest versions to keep.
      delete-old-versions t   ;; Don't ask to delete excess backup versions.
      backup-by-copying t)    ;; Copy all files, don't rename them.
(setq vc-make-backup-files t)

;; Custom Stuff
(require 'init-consult)
(require 'init-diffhl)
(require 'init-editing)
(require 'init-embark)
(require 'init-flymake)
(require 'init-ibuffer)
(require 'init-lsp)
(require 'init-local)
(require 'init-magit)
(require 'init-org)
(require 'init-paredit)
(require 'init-treemacs)
(require 'init-uniquify)
(require 'init-vertico)
(require 'init-window)

;; Tools
(require 'init-docker)
(require 'init-gemini)
(require 'init-guix)
(require 'init-http)
(require 'init-k8s)
(require 'init-nix)
(require 'init-sly)

;; Languages
(require 'init-ada)
(require 'init-clojure)
(require 'init-cpp)
(require 'init-d)
(require 'init-elixir)
(require 'init-erlang)
(require 'init-go)
(require 'init-haskell)
(require 'init-j)
(require 'init-json)
(require 'init-julia)
(require 'init-kotlin)
(require 'init-latex)
(require 'init-lfe)
(require 'init-lua)
(require 'init-nasm)
(require 'init-ocaml)
(require 'init-php)
(require 'init-purescript)
(require 'init-python)
(require 'init-r)
(require 'init-raku)
(require 'init-ruby)
(require 'init-rust)
(require 'init-scala)
(require 'init-scheme)
(require 'init-sml)
(require 'init-typescript)
(require 'init-yaml)
(require 'init-zig)

;;; Jump to arbitrary positions
(use-package avy
  :bind ("C-c z" . avy-goto-word-1))

;; Miscellaneous options
(setq-default major-mode
              (lambda () ; guess major mode from file name
                (unless buffer-file-name
                  (let ((buffer-file-name (buffer-name)))
                    (set-auto-mode)))))
(setq confirm-kill-emacs #'yes-or-no-p)
(setq window-resize-pixelwise t)
(setq frame-resize-pixelwise t)
(save-place-mode t)
(savehist-mode t)
(recentf-mode t)
(defalias 'yes-or-no #'y-or-n-p)

;; Store automatic customisation options elsewhere
(setq custom-file (locate-user-emacs-file "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

