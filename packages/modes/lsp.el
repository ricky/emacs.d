;;; lsp.el -- Install lsp-mode package

;;; Commentary:
;; Install & configure lsp-mode

;;; Code:
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :custom (lsp-prefer-flymake nil)
  :ensure t
  :hook (scala-mode . lsp-deferred))

(use-package lsp-ui
  :commands lsp-ui-mode
  :ensure t)

(use-package company-lsp
  :commands company-lsp
  :ensure t
  :requires company)

(use-package helm-lsp
  :commands helm-lsp-workspace-symbol
  :ensure t
  :requires helm)

(provide 'packages/modes/lsp)
;;; lsp.el ends here
