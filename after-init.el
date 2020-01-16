;;; after-init.el -- config

;;; Commentary:
;; Post-initialization configuration

;;; Code:
(require 'async-bytecomp)
(load "~/.emacs.d/sql.el")
(load "~/.emacs.d/mac.el")

; uniquify buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)

; pair mode
(show-paren-mode t)
(electric-pair-mode)
(setq show-paren-style 'mixed)

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
;;; after-init.el ends here
