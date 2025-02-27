(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(copilot-chat-model "claude-3.5-sonnet")
 '(custom-safe-themes
   '("fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" default))
 '(elfeed-feeds
   '("https://cloud.google.com/feeds/gke-stable-channel-release-notes.xml"))
 '(global-display-line-numbers-mode t)
 '(python-shell-prompt-detect-failure-warning nil)
 '(safe-local-variable-values
   '((projectile-project-test-cmd . "VIRTUAL_ENV=.direnv poetry run pytest")
     (eval poetry-install-install)
     (eval envrc-reload)
     (cider-clojure-cli-aliases . ":lib/pretty-errors:repl/rebel:dev:test:repl8G")
     (visual-line-mode . t)
     (prelude-whitespace)
     (cider-clojure-cli-aliases . ":lib/pretty-errors:inspect/portal-web:repl/rebel:dev:test")
     (cider-preferred-build-tool . clojure-cli)
     (projectile-project-test-cmd . "just test")))
 '(size-indication-mode t)
 '(straight-recipes-gnu-elpa-use-mirror t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#002b36" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :extend nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Menlo")))))
