;;; org -- org mode configuration

;;; Commentary:

;;; Code:
;; Keybindings
(global-set-key (kbd "C-c a") 'org-agenda)

;; Export org to confluence markdown
(require 'ox-confluence)

;; Set TODO states
(setq org-todo-keywords
      '((sequence "TODO(t)" "IN-PROGRESS(p!)" "WAITING(w@/!)" "|" "DONE(d!)" "CANCELLED(c@)")))

;;; org.el ends here
