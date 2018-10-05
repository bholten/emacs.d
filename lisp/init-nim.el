;;; package --- Summary
;;; Basic configuration for the Nim language.
;;; Taken from an example at:
;;; https://github.com/nim-lang/nim-mode
;;;
;;; Commentary:
;;; None
;;;
;;; Code:
(require-package 'nim-mode)

(add-hook 'nim-mode-hook 'nimsuggest-mode)

;; The `nimsuggest-path' will be set the value of
;; (executable-find "nimsuggest"), automatically.
;; (setq nimsuggest-path (executable-find "nimsuggest"))

;; You may need to install below packages if you haven't installed yet.

;; -- Auto completion --
;; You can omit if you configured company-mode on `prog-mode-hook'
;; (add-hook 'nimsuggest-mode-hook 'company-mode)
;; -- Auto lint --
;; You can omit if you configured flycheck-mode on `prog-mode-hook'
;; (add-hook 'nimsuggest-mode-hook 'flycheck-mode)

(provide 'init-nim)
;;; init-nim.el ends here
