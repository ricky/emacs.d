;;; csv.el -- Install csv-mode package

;;; Commentary:
;; Install & configure csv-mode

;;; Code:
(use-package csv-mode
  :ensure t
  :mode (("\\.csv\\'" . csv-mode)
	 ("\\.tsv\\'" . csv-mode)))

(provide 'packages/modes/csv)
;;; csv.el ends here
