(setq visible-bell 1)
;; (add-to-list 'load-path "/home/tmudholk/.emacs.d/tanmay_additions")
;; (add-to-list 'custom-theme-load-path "/home/tmudholk/.emacs.d/tanmay_additions")

(setq default-frame-alist '((font . "JetBrains Mono-9")))

;; (setq abbrev-file-name             ;; tell emacs where to read abbrev
;;       "~/.emacs.d/abbrev_defs")    ;; definitions from...

;; tabs are evil
(setq-default indent-tabs-mode nil)

;; ;; Turn off beep on error
;; (setq ring-bell-function 'ignore)

;; C-v moves to end of file if on last page
(setq scroll-error-top-bottom 'true)

;; ;; The following lines are always needed.  Choose your own keys.
;; (require 'org)
;; (global-set-key "\C-cl" 'org-store-link)
;; (global-set-key "\C-ca" 'org-agenda)
;; (global-set-key "\C-cc" 'org-capture)
;; (global-set-key "\C-cb" 'org-iswitchb)
;; (setq org-log-done t)
;; (setq org-startup-indented t)
;; (setq org-agenda-files (list "~/important/org/urgent_important.org"
;;                              "~/important/org/nonurgent_important.org"
;;                              "~/important/org/urgent_unimportant.org"
;;                              "~/important/org/nonurgent_unimportant.org"))

(define-key global-map (kbd "RET") 'reindent-then-newline-and-indent)

;; (show-paren-mode t)
;; (defadvice show-paren-function (after my-echo-paren-matching-line activate)
;;   "If a matching paren is off-screen, echo the matching line."
;;   (when (char-equal (char-syntax (char-before (point))) ?\))
;;     (let ((matching-text (blink-matching-open)))
;;       (when matching-text
;;         (message matching-text)))))

;; (electric-pair-mode 1)

(display-time-mode 1)

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(setq menu-prompting nil)

;; (setq TeX-auto-save nil)
;; (setq TeX-parse-self t)
;; (setq TeX-save-query nil)
;; (setq TeX-PDF-mode t)

(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
(semantic-mode 1)
(require 'stickyfunc-enhance)

(require 'ido)
(ido-mode t)

;; (require 'org)
;; (define-key global-map "\C-cl" 'org-store-link)
;; (define-key global-map "\C-ca" 'org-agenda)
;; (setq org-log-done t)

;; use Shift+arrow_keys to move cursor around split panes
(windmove-default-keybindings)

;; ;; let org-mode work with windmove
;; (add-hook 'org-shiftup-final-hook 'windmove-up)
;; (add-hook 'org-shiftleft-final-hook 'windmove-left)
;; (add-hook 'org-shiftdown-final-hook 'windmove-down)
;; (add-hook 'org-shiftright-final-hook 'windmove-right)
;; (setq org-support-shift-select 'always)

;; (require 'flymake)

;; (defun flymake-get-tex-args (file-name)
;; (list "pdflatex"
;; (list "-file-line-error" "-draftmode" "-interaction=nonstopmode" file-name)))

;; (add-hook 'LaTeX-mode-hook 'flymake-mode)

;; (defun turn-on-outline-minor-mode ()
;; (outline-minor-mode 1))

;; (add-hook 'LaTeX-mode-hook 'turn-on-outline-minor-mode)
;; (add-hook 'latex-mode-hook 'turn-on-outline-minor-mode)
;; (setq outline-minor-mode-prefix "C-c C-o") ;; Or something else

;; (defun bury-compile-buffer-if-successful (buffer string)
;;   "Bury a compilation buffer if succeeded without warnings "
;;   (if (and
;;        (string-match "compilation" (buffer-name buffer))
;;        (string-match "finished" string)
;;        (not
;;         (with-current-buffer buffer
;;           (search-forward "warning" nil t))))
;;       (run-with-timer 1 nil
;;                       (lambda (buf)
;;                         (bury-buffer buf)
;;                         (switch-to-prev-buffer (get-buffer-window buf) 'kill))
;;                       buffer)))
;; (add-hook 'compilation-finish-functions 'bury-compile-buffer-if-successful)

;; (require 'package)
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; (package-initialize)
;; ;; (global-auto-complete-mode t)
;; (setq url-http-attempt-keepalives nil)
;; ;; (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
;; ;; For google chrome extension Edit with Emacs
;; ;; (load-theme 'zenburn t)

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

(require 'highlight-parentheses)
(highlight-parentheses-mode 1)

(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code."
  t)

(load-theme 'zenburn t)
