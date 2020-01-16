;;; browse-at-remote.el -- Install browse-at-remote package

;;; Commentary:
;; Install & configure browse-at-remote

;;; Code:
(use-package browse-at-remote
  :bind ("C-c b" . 'browse-at-remote)
  :ensure t)

(provide 'packages/browse-at-remote)
;;; browse-at-remote.el ends here
