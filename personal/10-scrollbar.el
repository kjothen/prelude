(use-package mlscroll
  :straight t
  :config
  (scroll-bar-mode -1)
  (setq mlscroll-shortfun-min-width 11) ;truncate which-func, for default mode-line-format's
  (mlscroll-mode 1))
