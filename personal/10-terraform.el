(use-package terraform-mode
  :straight t

  :custom (terraform-indent-level 2)
  :config
  (defun my-terraform-mode-init ()
    ;; if you want to use outline-minor-mode
    (outline-minor-mode 1)
    )

  (add-hook 'terraform-mode-hook 'my-terraform-mode-init)
  (add-to-list 'auto-mode-alist '"\.spc\\")
  )
