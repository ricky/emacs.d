;; Custom mode definitions and hooks

;; Multiple Major Modes
(require 'mmm-auto)
(setq mmm-global-mode 'maybe)

;; Jinja-templated SQL
(add-to-list 'auto-mode-alist '("\\.sql.jinja\\'" . sql-mode))
(mmm-add-mode-ext-class 'sql-mode "\\.sql.jinja\\'" 'jinja2)

;; Saltstack State Files
(add-to-list 'auto-mode-alist '("\\.sls\\'" . yaml-mode))
(mmm-add-mode-ext-class 'yaml-mode "\\.sls\\'" 'jinja2)

;; Scala
(add-hook 'sbt-mode-hook '(lambda ()
  ;; compilation-skip-threshold tells the compilation minor-mode
  ;; which type of compiler output can be skipped. 1 = skip info
  ;; 2 = skip info and warnings.
  (setq compilation-skip-threshold 1)

  ;; Bind C-a to 'comint-bol when in sbt-mode. This will move the
  ;; cursor to just after prompt.
  (local-set-key (kbd "C-a") 'comint-bol)

  ;; Bind M-RET to 'comint-accumulate. This will allow you to add
  ;; more than one line to scala console prompt before sending it
  ;; for interpretation. It will keep your command history cleaner.
  (local-set-key (kbd "M-RET") 'comint-accumulate)))

(add-hook 'scala-mode-hook '(lambda ()
  ;; sbt-find-definitions is a command that tries to find (with grep)
  ;; the definition of the thing at point.
  (local-set-key (kbd "M-.") 'sbt-find-definitions)

  ;; use sbt-run-previous-command to re-compile your code after changes
  (local-set-key (kbd "C-x '") 'sbt-run-previous-command)))

;; GO
(add-hook 'go-mode-hook '(lambda ()
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
  (local-set-key (kbd "M-.") 'godef-jump)))
