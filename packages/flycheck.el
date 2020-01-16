;;; flycheck.el -- Install flycheck package

;;; Commentary:
;; Install & configure flycheck

;;; Code:
(defun my/use-eslint-from-node-modules ()
  "Find eslint in the project directory, if present."
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/.bin/eslint"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))

(use-package flycheck
  :hook (flycheck-mode . my/use-eslint-from-node-modules)
  :init
  (global-flycheck-mode)
  (global-set-key [f6] 'flycheck-mode)
  :ensure t)

(use-package eslint-fix
  :ensure t
  :requires flycheck)

(provide 'packages/flycheck)
;;; flycheck.el ends here
