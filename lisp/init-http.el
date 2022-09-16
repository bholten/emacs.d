;;; init-http.el --- HTTP utilities -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package simple-httpd)
(use-package restclient
  :hook company-resclient)
(use-package company-restclient)
(use-package htmlize)

(defun bholten/restclient ()
  (interactive)
  (with-current-buffer (cvs-get-buffer-create "*restclient*")
    (restclient-mode)
    (pop-to-buffer (current-buffer))))

(defun bholten/print-to-browser ()
  (interactive)
  (browse-url-of-buffer (htmlize-buffer)))

(provide 'init-http)
;;; init-http.el ends here

