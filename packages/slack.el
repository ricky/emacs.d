;;; slack.el -- Install slack package

;;; Commentary:
;; Install & configure slack

;;; Code:
(defun my/slack-message-embed-mention ()
  "Bring up the mentions menu with `@'."
  (interactive)
  (call-interactively #'slack-message-embed-mention)
  (insert " "))

(use-package slack
  :bind (("C-c C-s" . slack-start)
	 :map slack-mode-map
	 ("@" . #'my/slack-message-embed-mention)
	 ("C-x j" . slack-select-rooms)
	 ("C-c M-d" . slack-message-delete)
	 ("C-c M-e" . slack-message-edit)
	 ("C-c M-r" . slack-message-add-reaction))
  :commands (slack-start)
  :custom
  (slack-buffer-emojify t)
  (slack-prefer-current-team t)
  :defer t
  :ensure t)

(use-package alert
  :commands (alert)
  :custom
  (alert-default-style 'notifier))

(provide 'packages/slack)
;;; slack.el ends here
