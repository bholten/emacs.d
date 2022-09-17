;;; init-clojure.el --- Clojure support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package clojure-mode)
(use-package cljsbuild-mode)
(use-package elein)
(use-package cider
  :config (setq nrepl-popup-stacktraces nil))  
(use-package flycheck-clojure)

(with-eval-after-load 'clojure-mode
  (with-eval-after-load 'cider
    (with-eval-after-load 'flycheck
      (flycheck-clojure-setup))))

(provide 'init-clojure)
;;; init-clojure.el ends here
