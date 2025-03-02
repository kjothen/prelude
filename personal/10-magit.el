(use-package magit
  :straight t
  :diminish magit-auto-revert-mode
  :diminish auto-revert-mode
  :bind (("C-c g" . #'magit-status))
  :custom
  (magit-repository-directories '(("~/Documents/github.nosync/" . 1)
                                  ("~/.emacs.d/" . 1)))
  :config
  (add-to-list 'magit-no-confirm 'stage-all-changes))

;; (use-package libgit :straight t :after magit)

;; (use-package magit-libgit
;;   :straight nil
;;   :after (magit libgit))

;; (use-package forge
;;   :straight t
;;   :after magit)

;; hack to eliminate weirdness
(unless (boundp 'bug-reference-auto-setup-functions)
  (defvar bug-reference-auto-setup-functions '()))
