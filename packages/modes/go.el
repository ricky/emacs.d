;;; go.el -- Install go-mode package

;;; Commentary:
;; Install & configure go-mode

;;; Code:

(defun my-go-setup ()
  "Customizations for go-mode."
  ;; Use goimports instead of go-fmt
  (when (executable-find "goimports")
    (setq gofmt-command "goimports"))

  ;; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go build -v && go test -v && go vet"))
  ;; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump))

(use-package go-mode
  :ensure t
  :hook (go-mode . my-go-setup)
  :mode "\\.go\\'")

(provide 'packages/modes/go)
;;; go.el ends here
