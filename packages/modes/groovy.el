;;; groovy.el -- Install groovy-mode package

;;; Commentary:
;; Install & configure groovy-mode

;;; Code:
(use-package groovy-mode
  :ensure t
  :mode (("\\.groovy\\'" . groovy-mode)
	 ("\\.pipeline\\'" . groovy-mode)
	 ("/Jenkinsfile\\'" . groovy-mode)))

(provide 'packages/modes/groovy)
;;; groovy.el ends here
