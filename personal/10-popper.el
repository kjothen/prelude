(use-package popper
  :straight t
  :bind (("C-`"   . popper-toggle)
         ("M-`"   . popper-cycle)
         ("C-M-`" . popper-toggle-type))
  :init
  (setq popper-reference-buffers
        '("\\*Messages\\*"
          "Output\\*$"
          "\\*Async Shell Command\\*"
          "\\*cider-error\\*$"
          "\\*Warnings\\*$"
          help-mode
          compilation-mode))
  (popper-mode +1)
  (popper-echo-mode +1))
