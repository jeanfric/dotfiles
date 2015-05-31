(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(column-number-mode t)
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(show-paren-mode t)
(setq require-final-newline 't)
(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.saves"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)
(custom-set-variables
 '(inhibit-startup-screen t))
(show-paren-mode t)
(setq show-paren-style 'parenthesis)
(setq which-func-mode t)
(iswitchb-mode)
(defun iswitchb-local-keys ()
  (progn
    (define-key iswitchb-mode-map (kbd "<right>") 'iswitchb-next-match)
    (define-key iswitchb-mode-map (kbd "<left>") 'iswitchb-prev-match)))
(add-hook 'iswitchb-define-mode-map-hook 'iswitchb-local-keys)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
