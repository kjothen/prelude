(use-package poetry
  :straight t
  :hook (python-mode . (lambda ()
                         (poetry-tracking-mode t)))
  :init
  (setq poetry-tracking-strategy 'projectile))

