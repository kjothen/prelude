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

;; (use-package copilot
;;   :defines
;;   copilot-max-char
;;   :commands
;;   copilot-mode
;;   :preface
;;   (defun os/activate-copilot ()
;;     (if (or (> (buffer-size) 100000)
;;             (string-prefix-p "*temp*-" (buffer-name)))
;;         ;; Or don't even warn to get rid of it.
;;         (message "Buffer size exceeds copilot max char limit or buffer is temporary. Copilot will not be activated.")
;;       (copilot-mode)))
;;   :straight (:host github :repo "copilot-emacs/copilot.el" :files ("*.el"))
;;   :config
;;   (setq copilot-enable-predicates nil
;;         warning-suppress-types '((copilot copilot--infer-indentation-offset)))
;;   (add-to-list 'copilot-major-mode-alist '("tsx-ts" . "typescriptreact"))
;;   (add-to-list 'copilot-major-mode-alist '("typescript-ts" . "typescript"))
;;   (add-to-list 'copilot-indentation-alist '(tsx-ts-mode 2))
;;   (add-to-list 'copilot-indentation-alist '(typescript-ts-mode 2))
;;   (add-to-list 'copilot-indentation-alist '(clojure-mode 2))
;;   (add-to-list 'copilot-indentation-alist '(clojurec-mode 2))
;;   (add-to-list 'copilot-indentation-alist '(clojurescript-mode 2))
;;   (add-to-list 'copilot-indentation-alist '(emacs-lisp-mode 2))
;;   (add-to-list 'copilot-indentation-alist '(css-ts-mode 2))
;;   (add-to-list 'copilot-indentation-alist '(json-ts-mode 2))
;;   (add-to-list 'copilot-indentation-alist '(dockerfile-mode 2))
;;   :bind (:map copilot-completion-map
;;               ("C-<tab>" . 'copilot-accept-completion)
;;               ("C-TAB" . 'copilot-accept-completion)
;;               ("S-C-TAB" . 'copilot-accept-completion-by-word)
;;               ("S-C-<tab>" . 'copilot-accept-completion-by-word)))
