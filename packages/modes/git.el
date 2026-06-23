;;; git.el -- Install git-modes package

;;; Commentary:
;; Install & configure git-modes

;;; Code:
(use-package git-modes
  :ensure t
  :mode (("/\\.gitconfig\\'"  . gitconfig-mode)
         ("/\\.gitignore\\'"   . gitignore-mode)
         ("/\\.gitattributes\\'" . gitattributes-mode)))

(provide 'packages/modes/git)
;;; git.el ends here
