(use-package lsp-mode
  :straight t
  :hook ((clojure-mode . lsp)
         (clojurec-mode . lsp)
         (clojurescript-mode . lsp))
  :config
  (setq-local copilot--infer-indentation-offset 2)
  ;; add paths to your local installation of project mgmt tools, like lein
  ;; (setenv "PATH" (concat
  ;;                 "/usr/local/bin" path-separator
  ;;                 (getenv "PATH")))

  (dolist (m '(clojure-mode
               clojurec-mode
               clojurescript-mode
               clojurex-mode))
    (add-to-list 'lsp-language-id-configuration `(,m . "clojure"))))
