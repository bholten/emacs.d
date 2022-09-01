;;; init-erlang.el --- Support for the Erlang language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(unless (package-installed-p 'erlang)
  (package-install 'erlang))

(require 'erlang-start)

(provide 'init-erlang)
;;; init-erlang.el ends here
