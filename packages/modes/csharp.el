;;; csharp.el -- Install csharp-mode package

;;; Commentary:
;; Install & configure csharp-mode

;;; Code:
(use-package csharp-mode
  :config
  (omnisharp-mode)
  (company-mode)
  (flycheck-mode)

  ;csharp-mode README.md recommends this too
  (electric-pair-mode 1)       ;; Emacs 24
  (electric-pair-local-mode 1) ;; Emacs 25

  (local-set-key (kbd "C-c r r") 'omnisharp-run-code-action-refactoring)
  (local-set-key (kbd "C-c C-c") 'recompile)
  :ensure t
  :mode "\\.cs\\'")

(provide 'packages/modes/csharp)
;;; csharp.el ends here
