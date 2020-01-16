;;; gitignore.el -- Install gitignore-mode package

;;; Commentary:
;; Install & configure gitignore-mode

;;; Code:
(use-package gitignore-mode
  :ensure t
  :mode "\\.gitignore\\'")

(provide 'packages/modes/gitignore)
;;; gitignore.el ends here
