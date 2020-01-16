;;; company.el -- Install company package

;;; Commentary:
;; Install & configure company

;;; Code:
(use-package company
  :ensure t
  :defer t
  :init (global-company-mode)
  :custom
  (company-tooltip-align-annotations t)
  (company-show-numbers t "Easy navigation to candidates with M-<n>")
  :diminish company-mode)

(use-package company-ctags
  :ensure t)

(use-package company-fuzzy
  :ensure t)

(use-package company-shell
  :ensure t)

(provide 'packages/company)
;;; company.el ends here
