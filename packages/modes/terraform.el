;;; terraform.el -- Install terraform-mode package

;;; Commentary:
;; Install & configure terraform-mode

;;; Code:
(use-package terraform-mode
  :ensure t
  :mode "\\.tf\\'")

(provide 'packages/modes/terraform)
;;; terraform.el ends here
