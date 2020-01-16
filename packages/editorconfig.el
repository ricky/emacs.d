;;; editorconfig.el -- Install editorconfig package

;;; Commentary:
;; Install & configure editorconfig

;;; Code:
(use-package editorconfig
  :config
  (editorconfig-mode t)
  :ensure t)

(use-package editorconfig-custom-majormode
  :after editorconfig
  :ensure t)

(provide 'packages/editorconfig)
;;; editorconfig.el ends here
