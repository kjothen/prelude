(require 'go-mode)
(add-hook 'go-mode-hook (lambda () (setq tab-width 2)))
(add-hook 'go-mode-hook (lambda () (whitespace-toggle-options 'tabs)))
