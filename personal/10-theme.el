(disable-theme 'zenburn)
;; (load-theme 'solarized-dark t)
;; (setq prelude-theme 'solarized-dark)
;; (add-hook 'treemacs-mode-hook (lambda () (load-theme 'solarized-dark t)))

(use-package doom-themes
  :straight t
  :config
  (let ((chosen-theme 'doom-solarized-dark))
    (doom-themes-visual-bell-config)
    (doom-themes-org-config)
    (setq doom-challenger-deep-brighter-comments t
          doom-challenger-deep-brighter-modeline t
          doom-rouge-brighter-comments t
          doom-ir-black-brighter-comments t
          modus-themes-org-blocks 'gray-background
          doom-dark+-blue-modeline nil)
    (load-theme chosen-theme)
    (add-hook 'treemacs-mode-hook (lambda () (load-theme 'doom-solarized-dark t)))
            ))
