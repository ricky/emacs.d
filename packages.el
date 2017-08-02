;;; packages.el -- set up package installation

;;; Commentary:
;; Programatically define the base package set
(require 'cl)
(require 'package)

;;; Code:
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)

(defun my-packages-installed-p ()
  (loop for p in package-selected-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (package-install-selected-packages))

(provide 'packages)
;;; packages.el ends here
