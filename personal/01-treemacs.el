(use-package treemacs
  :straight t
  :hook  (emacs-startup . treemacs)
  :config (setq treemacs-width 40))
  
(with-eval-after-load 'treemacs
  (define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action))
