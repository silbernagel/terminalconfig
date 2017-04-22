(defvar package-list
  '(
    elpy
    flycheck
    py-autopep8
    moe-theme
    magit
    jedi
    windmove
  ))

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("elpy" . "https://jorgenschaefer.github.io/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 10   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

(elpy-enable)

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(require 'moe-theme)
(moe-dark)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit py-autopep8 moe-theme elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; To display information about the current Git repository, type M-x magit-status. You will be doing that so often that it is best to bind this command globally:
 (global-set-key (kbd "C-x g") 'magit-status)

(setq vc-follow-symlinks nil)

(setq inhibit-startup-message t) ;; hide the startup message
; when on a tab, make the cursor the tab length
(setq-default x-stretch-cursor t)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
