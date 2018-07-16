;; Base go-mode
(require-package 'go-mode)

;; Enable flycheck
(add-to-list 'load-path "~/go/src/github.com/dougm/goflymake")
(require-package 'company-go)

(provide 'init-golang)
