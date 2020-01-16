;;; scala.el -- Install scala-mode package

;;; Commentary:
;; Install & configure scala-mode

;;; Code:
(use-package scala-mode
  :config
  ;; sbt-find-definitions is a command that tries to find (with grep)
  ;; the definition of the thing at point.
  (local-set-key (kbd "M-.") 'sbt-find-definitions)

  ;; use sbt-run-previous-command to re-compile your code after changes
  (local-set-key (kbd "C-x '") 'sbt-run-previous-command)
  :ensure t
  :mode "\\.s\\(cala\\|bt\\)$")

(provide 'packages/modes/scala)
;;; scala.el ends here
