;; Disable splash screen
(setq inhibit-startup-screen t)

;; Use Emacs terminfo, not system terminfo
(setq system-uses-terminfo nil)

;; Prefer utf-8 encoding
(prefer-coding-system 'utf-8)

;; Use windmove bindings
;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
(windmove-default-keybindings)

;; Display continuous lines
(setq-default truncate-lines nil)

;; Do not use tabs for indentation
(setq-default indent-tabs-mode nil)

;; Do not display menubar
(menu-bar-mode t)

;; trucate even even when screen is split into multiple windows
(setq-default truncate-partial-width-windows nil)

;; y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Disable backups
(setq backup-inhibited t)

;;disable auto save
(setq auto-save-default nil)

(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(require 'multi-term)
(setq multi-term-program "/bin/zsh")

(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 10000)))

;; js2-mode
(setq js-indent-level 2)
(setq js2-indent-level 2)
(setq js2-basic-offset 2)
(setq js2-bounce-indent-p t)

;; handlebars-mode
(require 'handlebars-mode)

;; Add Feature-Mode
;; Add Org-Mode

;; Tramp
(require 'tramp)
(setq tramp-default-method "scp")

;; Tail logs
(add-to-list 'auto-mode-alist '("\\.log\\'" . auto-revert-mode))

;; eww numbering
(eval-after-load "eww"
  '(progn (define-key eww-mode-map "f" 'eww-lnum-follow)
          (define-key eww-mode-map "F" 'eww-lnum-universal)))

(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
