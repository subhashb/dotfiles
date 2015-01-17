(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
  "/Users/subhashb/.emacs.d/elpa/auto-complete-20140824.1658/dict")
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'rust-mode)
