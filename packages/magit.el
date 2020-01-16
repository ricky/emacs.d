;;; magit.el -- Install magit package

;;; Commentary:
;; Install & configure magit

;;; Code:
(use-package magit
  :bind ("C-c g" . magit-status)
  :custom (magit-last-seen-setup-instructions "1.4.0")
  :ensure t)

(provide 'packages/magit)
;;; magit.el ends here
