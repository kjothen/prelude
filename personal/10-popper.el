(use-package popper
  :straight t
  :bind (("C-`"   . popper-toggle)
         ("M-`"   . popper-cycle)
         ("C-M-`" . popper-toggle-type))
  :init
  (setq popper-reference-buffers
        '("^\\*Messages\\*"
          "^\\*Warnings\\*"
          "\\*Shell Command Output\\*"
          "\\*Async Shell Command\\*"
          "\\*Completions\\*"
          "[Oo]utput\\*$"
          "^\\*cider.*\\*"
          "^\\*Python\\*$"
          "^\\*straight.*\\*"
          compilation-mode
          help-mode
          magit-mode
          messages-mode
          occur-mode))
  (setq popper-group-function #'popper-group-by-project)
  (popper-mode +1)
  (popper-echo-mode +1))
