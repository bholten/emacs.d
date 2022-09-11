;;; init-flymake.el --- Configure Flymake global behaviour -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'flymake-flycheck)
  (package-install 'flymake-flycheck))

(with-eval-after-load 'flycheck
    (setq-default flycheck-disabled-checkers
                  (append (default-value 'flycheck-disabled-checkers)
                          '(emacs-lisp emacs-lisp-checkdoc emacs-lisp-package))))

(add-hook 'prog-mode-hook 'flymake-mode)
(add-hook 'text-mode-hook 'flymake-mode)

(with-eval-after-load 'flymake
  ;; Provide some flycheck-like bindings in flymake mode to ease transition
  (define-key flymake-mode-map (kbd "C-c ! n") 'flymake-goto-next-error)
  (define-key flymake-mode-map (kbd "C-c ! p") 'flymake-goto-prev-error)
  (define-key flymake-mode-map (kbd "C-c ! c") 'flymake-start))

(provide 'init-flymake)
;;; init-flymake.el ends here
