;;; helm.el -- Install helm package

;;; Commentary:
;; Install & configure helm

;;; Code:
(use-package helm
  :bind (("C-x b" . helm-mini)
	 ("C-x C-f" . helm-find-files)
	 ("M-x" . helm-M-x)
	 ("M-y" . helm-show-kill-ring))
  :config (progn
	    (setq helm-buffers-fuzzy-matching t)
	    ; https://github.com/emacs-helm/helm/wiki/FAQ#arrow-keys-behavior-have-changed
	    (customize-set-variable 'helm-ff-lynx-style-map t)
	    (helm-mode 1))
  :diminish helm-mode
  :ensure t)

;; Use ack-grep on Ubuntu
(when (executable-find "ack-grep")
  (setq helm-grep-default-command "ack-grep -H --no-group --no-color %e %p %f"
        helm-grep-default-recurse-command "ack-grep -Hn --no-group --no-color %e %p %f"))

;; auto-complete w/ company
(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))

(use-package helm-rg
  :after helm
  :ensure t
  :commands (helm-rg helm-projectile-rg))

(use-package helm-projectile
  :after (helm projectile)
  :bind ("M-p" . helm-projectile-rg)
  :ensure t)

(use-package helm-company
  :after (helm company)
  :ensure t)

(use-package helm-flycheck
  :after helm
  :ensure t)

(use-package helm-fuzzier
  :after helm
  :ensure t)

(use-package helm-make
  :after helm
  :ensure t)

(use-package helm-sql-connect
  :after helm
  :ensure t)

(provide 'packages/helm)
;;; helm.el ends here
