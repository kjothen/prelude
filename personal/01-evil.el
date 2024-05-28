(use-package evil-cleverparens
  :straight t
  :config
  (setq evil-cleverparens-use-additional-movement-keys t
        evil-move-beyond-eol t)
  (add-hook 'clojure-mode-hook #'evil-cleverparens-mode)
  (add-hook 'magit-mode-hook #'turn-off-evil-mode)
  )
