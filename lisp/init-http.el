;;; init-http.el --- HTTP utilities -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'simple-httpd)
  (package-install 'simple-httpd))

(unless (package-installed-p 'restclient)
  (package-install 'restclient))

(unless (package-installed-p 'company-restclient)
  (package-install 'company-restclient))

(unless (package-installed-p 'htmlize)
  (package-install 'htmlize))

(add-hook 'restclient-mode 'company-restclient)

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

