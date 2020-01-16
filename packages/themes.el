;;; themes.el -- Install themes package

;;; Commentary:
;; Install & configure themes

;;; Code:
(use-package moe-theme
  :after powerline
  :config
  (use-package powerline :ensure t)
  (powerline-moe-theme)
  :ensure t)

(require 'moe-theme-switcher)

(provide 'packages/themes)
;;; themes.el ends here
