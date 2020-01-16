;;; init.el -- initialize emacs

;;; Commentary:

;;; Code:
;; Install Packages
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
(load "~/.emacs.d/packages.el")

;; Show column number
(setq column-number-mode t)

;; Backup settings
(defvar emacs-tmp-dir (expand-file-name "~/.emacs.d/tmp/"))
(setq
  backup-by-copying t          ; don't clobber symlinks
  backup-directory-alist
    `((".*" . ,emacs-tmp-dir)) ; don't litter my fs tree
  auto-save-list-file-prefix emacs-tmp-dir
  auto-save-file-name-transforms
    `((".*" ,emacs-tmp-dir t))
  delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)           ; use versioned backups


(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/after-init.el")))

(provide 'init)
;;; init.el ends here
