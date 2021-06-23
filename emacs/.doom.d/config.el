;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "khoi"
      user-mail-address "khoiracle@gmail.com")

(setq doom-font (font-spec :family "Jetbrains Mono" :size 14))
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Reduce which-key delay
(require 'which-key)
(setq which-key-idle-delay 0.01)

;; Full screen on launch
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Change ivy completion style
(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))
