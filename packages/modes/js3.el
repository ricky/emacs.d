;;; js3.el -- Install js3-mode package

;;; Commentary:
;; Install & configure js3-mode

;;; Code:
(use-package js3-mode
  :custom
  (js3-auto-indent-p t)
  (js3-consistent-level-indent-inner-bracket t)
  (js3-enter-indents-newline t)
  (js3-indent-on-enter-key t)
  :ensure t
  :mode "\\.js\\'")

(provide 'packages/js3-mode)
;;; js3.el ends here
