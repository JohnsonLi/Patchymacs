(setq inhibit-startup-message t)

(load-theme 'lavender t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)

(show-paren-mode 1)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq scroll-conservatively 100)

(setq ring-bell-function 'ignore)

(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

(setq electric-pair-pairs '(
                            (?\{ . ?\})
                            (?\( . ?\))
                            (?\[ . ?\])
                            (?\" . ?\")
                            ))
(electric-pair-mode t)

(setq my-prefered-font
      (cond ((eq system-type 'windows-nt) "Courier New-14")
            (t nil)))

(when my-prefered-font
  (set-frame-font my-prefered-font nil t))

(global-set-key (kbd "C-x k") 'kill-this-buffer)
