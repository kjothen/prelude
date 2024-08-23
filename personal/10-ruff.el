(use-package ruff-format
  :straight t
  :hook (python-mode . (lambda ()
                         (ruff-format-on-save-mode t))))
