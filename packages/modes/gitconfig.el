;;; gitconfig.el -- Install gitconfig-mode package

;;; Commentary:
;; Install & configure gitconfig-mode

;;; Code:
(use-package gitconfig-mode
  :ensure t
  :mode "\\.gitconfig\\'")

(provide 'packages/modes/gitconfig)
;;; gitconfig.el ends here
