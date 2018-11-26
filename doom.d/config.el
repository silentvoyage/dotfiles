;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; company
(after! company
  (setq-default
   company-idle-delay 0.3
   company-minimum-prefix-length 3))

;; flycheck
(after! flycheck
  (setq flycheck-idle-change-delay 5))

(setq-default
 user-full-name "sdvcrx"
 user-mail-address "me@sdvcrx.com"

 ;; evil
 ;; map jj to <ESC>
 evil-escape-key-sequence "jj"
 ;; evil-escape-delay 0.3
 ;; evil-escape-inhibit-functions '(evil-visual-state-p)

 ;; doom
 doom-localleader-key ","

 ;; font
 doom-font (font-spec :family "Source Code Pro" :size 15)
 doom-unicode-font (font-spec :family "Source Code Pro" :size 15)

 ;; elpa
 package-archives
 '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
   ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
   ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/"))
)

;; keybindings
(map!
 ;; Easier window navigation
 :n "C-h"   #'evil-window-left
 :n "C-j"   #'evil-window-down
 :n "C-k"   #'evil-window-up
 :n "C-l"   #'evil-window-right

 (:leader
   (:prefix "f"
     :desc "Save buffer" :n "s" #'save-buffer
     :desc "Toggle neotree" :n "t" #'neotree-toggle)
   (:prefix "b"
     :desc "Kill buffer" :n "d" #'doom/kill-this-buffer-in-all-windows)
   (:prefix "g"
     :desc "Magit dispatch" :n "m" #'magit-dispatch-popup)
   )

 ;; python major mode
 (:after python
   (:map python-mode-map
     :localleader
     :desc "pyvenv"
     :prefix "v"
     :desc "Python virtualenv workon" :n "w" #'pyvenv-workon
     :desc "Deactive virtualenv" :n "d" #'pyvenv-deactivate
     :desc "Active virtualenv" :n "a" #'pyvenv-activate
     ))
 )
