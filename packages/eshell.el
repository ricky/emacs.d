;;; eshell.el -- Install eshell package

;;; Commentary:
;; Install & configure eshell

;;; Code:
(use-package eshell-did-you-mean
  :ensure t)

(use-package eshell-git-prompt
  :ensure t)

(provide 'packages/eshell)
;;; eshell.el ends here
