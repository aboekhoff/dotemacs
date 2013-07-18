;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; keep (custom-set* ...) out of init.el
(setq custom-file "~/.emacs.d/custom.el")
(unless (file-exists-p custom-file) 
  (write-region "" nil custom-file))
(load custom-file)

;; no more backups please
(setq make-backup-files nil)
(setq auto-save-default nil)

;; tabs
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; oh, emacs
(setq inhibit-startup-message t)
(blink-cursor-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)

(delete-selection-mode t)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(show-paren-mode t)
(column-number-mode t)
(set-fringe-style -1)
(tooltip-mode -1)

(load-theme 'wombat)

;; ido-mode is nice
(ido-mode t)

;; cua-mode is nice too
(cua-mode t)

;; switch windows intuitively
(global-set-key (kbd "S-<up>") 'windmove-up)
(global-set-key (kbd "S-<down>") 'windmove-down)
(global-set-key (kbd "S-<right>") 'windmove-right)
(global-set-key (kbd "S-<left>") 'windmove-left)

;; scrolling
(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)
