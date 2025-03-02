(use-package popper
  :straight t
  :bind (("C-`"   . popper-toggle)
         ("M-`"   . popper-cycle)
         ("C-M-`" . popper-toggle-type))
  :custom
  (popper-reference-buffers
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
  (popper-group-function #'popper-group-by-project)
  :config
  (popper-mode +1)
  (popper-echo-mode +1))
