;;; init-http.el --- HTTP utilities -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'simple-httpd)
  (package-install 'simple-httpd))

(unless (package-installed-p 'restclient)
  (package-install 'restclient))

(unless (package-installed-p 'company-restclient)
  (package-install 'company-restclient))

(add-hook 'restclient-mode 'company-restclient)

(defun bholten/restclient ()
  (interactive)
  (with-current-buffer (cvs-get-buffer-create "*restclient*")
    (restclient-mode)
    (pop-to-buffer (current-buffer))))

(provide 'init-http)
;;; init-http.el ends here

