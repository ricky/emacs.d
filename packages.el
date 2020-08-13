;;; packages.el -- set up package installation

;;; Commentary:
;; Programatically define the base package set
(require 'package)

;;; Code:
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'load-path "~/.emacs.d/lisp/")

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(unless (package-installed-p 'diminish)
  (package-refresh-contents)
  (package-install 'diminish))
(unless (package-installed-p 'bind-key)
  (package-refresh-contents)
  (package-install 'bind-key))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/.emacs.d/site-lisp/use-package/"))

(require 'load-directory)
(load-directory "~/.emacs.d/packages")

(provide 'packages)
;;; packages.el ends here
