;; Hide tool bar
(tool-bar-mode -1)

;; Hide menu bar
(menu-bar-mode -1)

;; Hide scroll bar
(scroll-bar-mode -1)

;; Highlight current line
(global-hl-line-mode 1)

;; Hide welcome screen
(setq inhibit-startup-screen 1)

;; Require gentoo specific macroses
(require 'site-gentoo)

;; Disable autosave things
(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)

;; Enable line numbering
(global-linum-mode 1)

;; Custom scratch startup message
(setq initial-scratch-message "Hello zlogene! To create/open file type C-x C-f")

;; Turning package-repos on
(package-initialize)

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))


;; Load non-default theme
(load-theme 'wombat)

;; Font
(set-frame-font "Liberation Mono 11" nil t)

;; Change cursor style
(set-default 'cursor-type 'hbar)

;; Close brackets automatically
(electric-pair-mode 1)

;; Load powerline and theme
(require 'powerline)

(powerline-default-theme)
