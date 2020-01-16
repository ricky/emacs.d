;;; org.el -- Install org package

;;; Commentary:
;; Install & configure org

;;; Code:
(use-package org
  :bind (("C-c a" . org-agenda))
  :custom
  (org-todo-keywords
   '((sequence "TODO(t)" "IN-PROGRESS(p!)" "WAITING(w@/!)" "|" "DONE(d!)" "CANCELLED(c@)")))
  :ensure t
  :mode ("\\.org\\'" . org-mode)
  :pin org)

(use-package org-notebook
  :ensure t)

(use-package ox-confluence)

(use-package ox-hugo
  :ensure t)

(use-package ox-rst
  :ensure t)

(provide 'packages/org)
;;; org.el ends here
