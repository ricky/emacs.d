;;; sql.el -- Install sql-mode package

;;; Commentary:
;; Install & configure sql-mode

;;; Code:
(use-package sql
  :config
  (add-to-list 'auto-mode-alist '("\\.sql.jinja\\'" . sql-mode)))

(provide 'packages/modes/sql)
;;; sql.el ends here
