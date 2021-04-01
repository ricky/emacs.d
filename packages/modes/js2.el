;;; js2.el -- Install js2-mode package

;;; Commentary:
;; Install & configure js2-mode

;;; Code:
(use-package js2-mode
  :ensure t
  :init
  ;; js-mode + js2-minor-mode is recommend for JSX in Emacs 27 and later
  (add-hook 'js-mode-hook 'js2-minor-mode))

(provide 'packages/js2-mode)
;;; js2.el ends here
