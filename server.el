;;; server.el -- ensure emacs server is running -*- lexical-binding: t; -*-

;;; Commentary:
;; start the Emacs server if it's not running

;;; Code:
(require 'server)
(unless (server-running-p)
  (server-start))

;;; server.el ends here
