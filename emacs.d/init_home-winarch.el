;; (setq visible-bell 1)

(setq default-frame-alist '((font . "JetBrains Mono-9")))

;; tabs are evil
(setq-default indent-tabs-mode nil)

;; ;; Turn off beep on error
;; (setq ring-bell-function 'ignore)

;; C-v moves to end of file if on last page
(setq scroll-error-top-bottom 'true)

(define-key global-map (kbd "RET") 'reindent-then-newline-and-indent)

(display-time-mode 1)

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(setq menu-prompting nil)

(require 'ido)
(ido-mode t)

;; use Shift+arrow_keys to move cursor around split panes
(windmove-default-keybindings)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mailcap-user-mime-data
   '(("evince %s" "application/pdf" nil)
     ("shotwell %s" "image/png" nil)))
 '(package-selected-packages
   '(elpy auto-complete ein zenburn-theme highlight-parentheses paredit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
(semantic-mode 1)
(require 'stickyfunc-enhance)

(require 'highlight-parentheses)
(highlight-parentheses-mode 1)

(load-theme 'zenburn t)
