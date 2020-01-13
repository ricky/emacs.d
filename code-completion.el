;;; code-completion -- auto-completion setup

;;; Commentary:
;; Configuration and inititalization of automatic code completion

;;; Code:
(add-hook 'after-init-hook 'global-company-mode)

;; omnisharp integration
(eval-after-load
 'company
 '(add-to-list 'company-backends 'company-omnisharp))

(add-hook 'csharp-mode-hook #'company-mode)

(provide 'code-completion)
;;; code-completion.el ends here
