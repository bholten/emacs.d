(require-package 'racket-mode)
(require-package 'scribble-mode)
(require-package 'geiser)

;; Set tab auto complete
(setq tab-always-indent 'complete)

;; Add unicode support for racket
(add-hook 'racket-mode-hook      #'racket-unicode-input-method-enable)
(add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)

(provide 'init-scheme)
