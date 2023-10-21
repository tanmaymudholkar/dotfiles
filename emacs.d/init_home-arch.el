(setq default-frame-alist '((font . "JetBrains Mono-13")))

;; tabs are evil
(setq-default indent-tabs-mode nil)

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

;; install: stickyfunc-enhance, highlight-parentheses, zenburn-theme, elpy, auto-complete, ein, rainbow-dalimiters

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
;; (setq url-http-attempt-keepalives nil)

(require 'highlight-parentheses)
(highlight-parentheses-mode 1)

(load-theme 'zenburn t)

(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
(semantic-mode 1)
(require 'stickyfunc-enhance)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(rainbow-delimiters ein auto-complete elpy zenburn-theme stickyfunc-enhance highlight-parentheses)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(global-auto-complete-mode t)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
