;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "khoi"
      user-mail-address "khoiracle@gmail.com")

(setq doom-font (font-spec :family "Jetbrains Mono" :size 14))
(setq doom-theme 'doom-one)
(setq org-directory "~/org/")
(setq display-line-numbers-type t)

;; Reduce which-key delay
(require 'which-key)
(setq which-key-idle-delay 0.01)

;; Full screen on launch
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Change ivy completion style
(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))
