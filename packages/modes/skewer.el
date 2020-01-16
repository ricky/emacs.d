;;; skewer.el -- Install skewer-mode package

;;; Commentary:
;; Install & configure skewer-mode

;;; Code:
(use-package skewer-mode
  :bind ("C-c w" . skewer-mode)
  :ensure t)

(use-package skewer-less
  :ensure t)

(provide 'packages/modes/skewer)
;;; skewer.el ends here
