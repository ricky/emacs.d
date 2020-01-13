;;; modes -- mode-specific customizations

;;; Commentary:
;; Custom mode definitions and hooks

;;; Code:
;; Multiple Major Modes
(require 'mmm-auto)
(setq mmm-global-mode 'maybe)

;; Jinja-templated SQL
(add-to-list 'auto-mode-alist '("\\.sql.jinja\\'" . sql-mode))
(mmm-add-mode-ext-class 'sql-mode "\\.sql.jinja\\'" 'jinja2)

;; C#
(add-hook 'csharp-mode-hook '(lambda ()
  (omnisharp-mode)
  (company-mode)
  (flycheck-mode)

  ;csharp-mode README.md recommends this too
  (electric-pair-mode 1)       ;; Emacs 24
  (electric-pair-local-mode 1) ;; Emacs 25

  (local-set-key (kbd "C-c r r") 'omnisharp-run-code-action-refactoring)
  (local-set-key (kbd "C-c C-c") 'recompile)))

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

;; Javascript
; Treat `` like quotes for interpolated strings
; (modify-syntax-entry ?` "\"" js-mode-syntax-table)

;; Flycheck
; eslint
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

(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

(provide 'modes)
;;; modes.el ends here
