;;; sbt.el -- Install sbt-mode package

;;; Commentary:
;; Install & configure sbt-mode

;;; Code:
(use-package sbt-mode
  :bind (:map sbt-mode-map
	      ;; Bind C-a to 'comint-bol when in sbt-mode. This will move the
	      ;; cursor to just after prompt.
	      ("C-a" . comint-bol)
	      ;; Bind M-RET to 'comint-accumulate. This will allow you to add
	      ;; more than one line to scala console prompt before sending it
	      ;; for interpretation. It will keep your command history cleaner.
	      ("M-RET" . comint-accumulate))
  :commands sbt-start sbt-command
  :custom
  ;; compilation-skip-threshold tells the compilation minor-mode
  ;; which type of compiler output can be skipped. 1 = skip info
  ;; 2 = skip info and warnings.
  (compilation-skip-threshold 1)

  ;; sbt-supershell kills sbt-mode:  https://github.com/hvesalai/emacs-sbt-mode/issues/152
  (sbt:program-options '("-Dsbt.supershell=false"))
  :ensure t)

(provide 'packages/modes/sbt)
;;; sbt.el ends here
