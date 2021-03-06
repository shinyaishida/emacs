;; use command keys as meta keys
(setq mac-command-key-is-meta t)

;; color
(global-font-lock-mode t)

;; shell
(setq shell-file-name "/bin/bash")
(setq shell-command-switch "-c")

;; automatically append a new-line code after the end line
(setq require-final-newline t)

;; line number and column number
(line-number-mode t)
(column-number-mode t)

;; hilight the selected region
(setq transient-mark-mode t)
(set-face-foreground 'region "white")
(set-face-background 'region "dimgray")

;; backup
(setq make-backup-files nil)
(setq backup-inhibited t)

;; lockup
(setq create-lockfiles nil)

;; startup message
(setq inhibit-startup-message t)

;; menu bar
(menu-bar-mode nil)

;; tool bar
(if window-system
    (tool-bar-mode -1))

;; visible bell
(setq visible-bell t)

;; parenthesis
(show-paren-mode t)
(setq show-paren-ring-bell-on-mismatch t)

;; time
(display-time)

;; remove ^M
(add-hook 'comint-output-filter-functions 'shell-strip-ctrl-m nil t)

;; untabify by default
(setq-default tab-width 4 indent-tabs-mode nil)

;; complementation
(setq shell-file-name-chars "~/A-Za-z0-9_^$!#%&{}@'`.,;()-")

;; format buffer on saving a file.
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; (add-hook 'before-save-hook 'indent-buffer)

;; set mark on string found by incremental search.
(define-key isearch-mode-map (kbd "C-m")
  #'(lambda ()
      (interactive)
      (push-mark isearch-other-end t 'activate)
      (isearch-exit)))
