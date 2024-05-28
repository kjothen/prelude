(use-package editorconfig :straight t)

(use-package exec-path-from-shell
  :straight t )

(use-package copilot
  :straight (:host github :repo "copilot-emacs/copilot.el" :files ("*.el"))
  :ensure t
  :init (exec-path-from-shell-initialize)
  :bind (:map copilot-mode-map
              ("<tab>" . my/copilot-tab)
              ("s-n" . copilot-next-completion)
              ("s-p" . copilot-previous-completion)
              ("s-w" . copilot-accept-completion-by-word)
              ("s-l" . copilot-accept-completion-by-line))
  :config
  (setq copilot-indent-offset-warning-disable t)
  (defun my/copilot-tab ()
    (interactive)
    (or (copilot-accept-completion)
        (indent-for-tab-command)))

  :hook
  (prog-mode . copilot-mode)
  )
