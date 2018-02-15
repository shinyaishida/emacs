(auto-package-install '(flycheck))

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'ruby-mode-hook
	  '(lambda ()
	     (setq flycheck-checker 'ruby-rubocop)
	     (flycheck-mode 1)))