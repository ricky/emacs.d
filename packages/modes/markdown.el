;;; markdown.el -- Install markdown-mode package

;;; Commentary:
;; Install & configure markdown-mode

;;; Code:
(use-package markdown-mode
  :ensure t
  :mode "\\.(md|mdown|markdown)\\'")

(provide 'packages/modes/markdown)
;;; markdown.el ends here
