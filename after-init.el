;;; after-init.el -- config

;;; Commentary:
;; Post-initialization configuration

;;; Code:
(require 'async-bytecomp)
(load "~/.emacs.d/revbufs/revbufs.el")
(load "~/.emacs.d/helm.el")
(load "~/.emacs.d/modes.el")
(load "~/.emacs.d/org.el")
(load "~/.emacs.d/sql.el")
(load "~/.emacs.d/mac.el")
(load "~/.emacs.d/randomize-region.el")
(load "~/.emacs.d/code-completion.el")

; color theme
(require 'powerline)
(require 'moe-theme)
(require 'moe-theme-switcher)
(powerline-moe-theme)

; uniquify buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)

; magit
(setq magit-last-seen-setup-instructions "1.4.0")
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c b") 'browse-at-remote)

; pair mode
(show-paren-mode t)
(electric-pair-mode)
(setq show-paren-style 'mixed)

; Extra Shortcuts
(global-set-key (kbd "<C-f9>") 'revbufs)

; whitespace mode
(global-set-key (kbd "<f9>") 'whitespace-mode)
(setq whitespace-display-mappings
  ;; all numbers are Unicode codepoint in decimal. try (insert-char 182 ) to see it
  '(
     (space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
     (newline-mark 10 [8629 10]) ; 10 LINE FEED, 8629 DOWNWARDS ARROW WITH CORNER LEFTWARDS
     (tab-mark 9 [8677 9] [92 9]) ; 9 TAB, 677 RIGHTWARDS ARROW TO BAR 「⇥」
   )
)

;; ·	183	MIDDLE DOT
;; ¶	182	PILCROW SIGN
;; ↵	8629	DOWNWARDS ARROW WITH CORNER LEFTWARDS
;; ↩	8617	LEFTWARDS ARROW WITH HOOK
;; ⏎	9166	RETURN SYMBOL
;; ▷	9655	WHITE RIGHT POINTING TRIANGLE
;; ▶	9654	BLACK RIGHT-POINTING TRIANGLE
;; →	8594	RIGHTWARDS ARROW
;; ↦	8614	RIGHTWARDS ARROW FROM BAR
;; ⇥	8677	RIGHTWARDS ARROW TO BAR
;; ⇨	8680	RIGHTWARDS WHITE ARROW

; misc
(put 'set-goal-column 'disabled nil)
(global-set-key [f5] 'call-last-kbd-macro)
(global-set-key [f6] 'flycheck-mode)
(editorconfig-mode t)
;;; after-init.el ends here
