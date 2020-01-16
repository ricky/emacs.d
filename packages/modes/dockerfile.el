;;; dockerfile.el -- Install dockerfile-mode package

;;; Commentary:
;; Install & configure dockerfile-mode

;;; Code:
(use-package dockerfile-mode
  :ensure t
  :mode "/Dockerfile\\'")

(provide 'packages/modes/dockerfile)
;;; dockerfile.el ends here
