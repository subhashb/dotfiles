(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" user-emacs-directory))))

;; transparency
(set-frame-parameter (selected-frame) 'alpha '(85 85))
(add-to-list 'default-frame-alist '(alpha 85 85))

(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)

(package-initialize)

(load "00common-setup.el")
(load "01ruby.el")
(load "03auto-complete.el")
(load "05smart-parens.el")
(load "06projectile.el")
(load "07highlight-indentation.el")
(load "08flyspell.el")
(load "09markdown.el")
(load "10rust.el")
(load "11theme.el")
