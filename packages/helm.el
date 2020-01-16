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

(use-package helm-swoop
  :after helm
  :bind (("C-c M-i" . helm-multi-swoop)
	 ("C-x M-i" . helm-multi-swoop-all)
	 ("M-s" . helm-swoop)
	 ("M-S" . helm-swoop-back-to-last-point)
	 :map isearch-mode-map
	 ; When doing isearch, hand the word over to helm-swoop
	 ("M-i" . helm-swoop-from-isearch)
	 :map helm-swoop-map
	 ; From helm-swoop to helm-multi-swoop-all
	 ("M-i" . helm-multi-swoop-all-from-helm-swoop)
	 ; Instead of helm-multi-swoop-all, you can also use helm-multi-swoop-current-mode
	 ("M-m" . helm-multi-swoop-current-mode-from-helm-swoop)
	 ; Move up and down like isearch
	 ("C-r" . helm-previous-line)
	 ("C-s" . helm-next-line)
	 :map helm-multi-swoop-map
	 ("C-r" . helm-previous-line)
	 ("C-s" . helm-next-line))
  :ensure t
  :init
  (bind-key "M-m" 'helm-swoop-from-isearch isearch-mode-map))

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
