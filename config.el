; Start emacs maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;Remove startup screen
(setq inhibit-startup-message t)

; Load purbol theme
(load-theme 'lavender t)

; Remove some gui elements
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

; Show line numbers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'text-mode-hook 'display-line-numbers-mode)

; Show matching parentheses
(show-paren-mode 1)

; Disable backup files
(setq make-backup-files nil)
(setq auto-save-default nil)

; When you reach end of buffer only scroll a lil
(setq scroll-conservatively 100)

; No sounds
(setq ring-bell-function 'ignore)

; Tab widths to 4 and use spaces
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

; Confirmation dialog to one letter
(defalias 'yes-or-no-p 'y-or-n-p)

; Auto create matching brackets
(setq electric-pair-pairs '(
                            (?\{ . ?\})
                            (?\( . ?\))
                            (?\[ . ?\])
                            (?\" . ?\")
                            ))
(electric-pair-mode t)

; Change cursor to new buffer when splitting veritcally
(defun split-and-follow-vertically ()
	(interactive)
	(split-window-right)
	(balance-windows)
	(other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

; Change font depending on os
(setq sys-font
      (cond ((eq system-type 'windows-nt) "Courier New-14")
            ((eq system-type 'gnu/linux) "Ubuntu Mono-16")
            (t nil)))

(when sys-font
  (set-default-font sys-font))

; Killing buffer kills current buffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)

; M-x shell opens a shell in the selected buffer
(push (cons "\\*shell\\*" display-buffer--same-window-action) display-buffer-alist)
