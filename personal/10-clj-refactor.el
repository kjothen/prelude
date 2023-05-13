(use-package clj-refactor
  :straight t
  :config
  (add-hook 'clojure-mode-hook
            (lambda ()
              (clj-refactor-mode 1)
              (cljr-add-keybindings-with-prefix "C-c C-m")
              ))
  (setq cljr-warn-on-eval nil)
  :bind ("C-c '" . hydra-cljr-help-menu/body))
