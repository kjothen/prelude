(use-package markdown-mode
  :straight t
  :init (setq markdown-command "multimarkdown"))

(use-package markdown-xwidget
  :after markdown-mode
  :straight (markdown-xwidget
             :type git
             :host github
             :repo "cfclrk/markdown-xwidget"
             :files (:defaults "resources"))
  :bind (:map markdown-mode-command-map
              ("x" . markdown-xwidget-preview-mode))
  :custom
  (markdown-xwidget-command "multimarkdown")
  (markdown-xwidget-github-theme "dark")
  (markdown-xwidget-mermaid-theme "dark")
  (markdown-xwidget-code-block-theme "default"))
