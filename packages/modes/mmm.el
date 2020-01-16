;;; mmm.el -- Install mmm-mode package

;;; Commentary:
;; Install & configure mmm-mode

;;; Code:
(use-package mmm-auto
  :commands mmm-mode
  :config
  (mmm-add-mode-ext-class 'sql-mode "\\.sql.jinja\\'" 'jinja2)
  :custom
  (mmm-global-mode 'maybe)
  :ensure mmm-mode)

(use-package mmm-jinja2
  :ensure t)

(provide 'packages/modes/mmm)
;;; mmm.el ends here
