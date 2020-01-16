;;; omnisharp.el -- Install omnisharp package

;;; Commentary:
;; Install & configure omnisharp

;;; Code:
(use-package omnisharp
  :config
  (add-to-list 'company-backends 'company-omnisharp)
  :defer t
  :diminish omnisharp-mode
  :ensure t
  :mode ("\\.cs\\'" . csharp-mode))

(provide 'packages/omnisharp)
;;; omnisharp.el ends here
