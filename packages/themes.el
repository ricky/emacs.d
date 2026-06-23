;;; themes.el -- Install themes package

;;; Commentary:
;; Install & configure themes

;;; Code:
(use-package moe-theme
  :after powerline
  :config
  (require 'moe-theme-switcher)
  (setq
    ;; nil uses 6:00 AM & PM instead of local sunrise/sunset
    moe-theme-switch-by-sunrise-and-sunset nil)
  (moe-theme-switcher-mode 1)
  (powerline-moe-theme)
  :ensure t)

(provide 'packages/themes)
;;; themes.el ends here
