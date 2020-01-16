;;; salt.el -- Install salt-mode package

;;; Commentary:
;; Install & configure salt-mode

;;; Code:
(use-package salt-mode
  :ensure t
  :mode "\\.sls\\'")

(provide 'packages/modes/salt)
;;; salt.el ends here
