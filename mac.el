;; Mac OS X environment setup
(when (eq system-type 'darwin)
  ;; Ensure that delete key deletes forward
  (normal-erase-is-backspace-mode 1)
  ;; Use Alt as Meta
  ; (set-keyboard-coding-system nil)
  (setq x-alt-keysym 'meta)
  (setq mac-option-modifier (quote (:ordinary meta :function alt :mouse alt)))
  ;; Initialize $PATH from environment
  (exec-path-from-shell-initialize))
