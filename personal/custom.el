(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-safe-themes
   '("8feca8afd3492985094597385f6a36d1f62298d289827aaa0d8a62fe6889b33c" "dea4b7d43d646aa06a4f705a58f874ec706f896c25993fcf73de406e27dc65ba" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" default))
 '(global-display-line-numbers-mode t)
 '(org-agenda-files '("/Volumes/GoogleDrive/My Drive/org-mode/work.org"))
 '(package-selected-packages
   '(zprint-mode terraform-mode cider compat dash f gh git-commit ht magit-section markdown-mode posframe transient treemacs with-editor org-journal impatient-mode olivetti org-super-agenda aggressive-indent github-modern-theme zprint-format just-mode justl projectile-ripgrep ripgrep treemacs-perspective treemacs-all-the-icons all-the-icons neotree solarized solarized-theme clojure-mode yaml-mode web-mode lsp-ui lsp-mode json-mode js2-mode rainbow-mode elisp-slime-nav rainbow-delimiters company counsel swiper ivy exec-path-from-shell zop-to-char zenburn-theme which-key volatile-highlights undo-tree super-save smartrep smartparens operate-on-number nlinum move-text magit projectile imenu-anywhere hl-todo guru-mode git-modes git-timemachine gist flycheck expand-region epl editorconfig easy-kill diminish diff-hl discover-my-major crux browse-kill-ring anzu ag ace-window))
 '(safe-local-variable-values
   '((cider-clojure-cli-aliases . ":lib/pretty-errors:repl/rebel:dev:test -Sforce")
     (cider-preferred-build-tool . clojure-cli)
     (eval setq clojure-toplevel-inside-comment-form t)))
 '(size-indication-mode t)
 '(tool-bar-mode nil))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(default ((((class color) (min-colors 89)) (:foreground "#839496" :background "#002b36")))))

(load-theme 'solarized-dark t)

'(explicit-shell-file-name "/bin/zsh")
'(explicit-zsh-args '("--interactive" "--login"))
'(comint-process-echoes 0)

(add-hook 'just-mode-hook (lambda () (set-fill-column 120)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#002b36" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :extend nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "nil" :family "Menlo")))))
