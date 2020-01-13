;;; helm --- Helm configuration
;;; Commentary:
;; Activation and keyboard shortcuts for HELM and
;; and related packages

;;; Code:
(require 'helm-config)
(helm-mode 1)

;; Keybinds
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
; https://github.com/emacs-helm/helm/wiki/FAQ#arrow-keys-behavior-have-changed
(customize-set-variable 'helm-ff-lynx-style-map t)

;; Use ack-grep on Ubuntu
(when (executable-find "ack-grep")
  (setq helm-grep-default-command "ack-grep -H --no-group --no-color %e %p %f"
        helm-grep-default-recurse-command "ack-grep -Hn --no-group --no-color %e %p %f"))

;; auto-complete w/ company
(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)))

;; Swoop
(require 'helm-swoop)
;; Keybinds
(global-set-key (kbd "M-s") 'helm-swoop)
(global-set-key (kbd "M-S") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

;; When doing isearch, hand the word over to helm-swoop
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
;; From helm-swoop to helm-multi-swoop-all
(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
;; Instead of helm-multi-swoop-all, you can also use helm-multi-swoop-current-mode
(define-key helm-swoop-map (kbd "M-m") 'helm-multi-swoop-current-mode-from-helm-swoop)

;; Move up and down like isearch
(define-key helm-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-swoop-map (kbd "C-s") 'helm-next-line)
(define-key helm-multi-swoop-map (kbd "C-r") 'helm-previous-line)
(define-key helm-multi-swoop-map (kbd "C-s") 'helm-next-line)

;;; helm.el ends here
