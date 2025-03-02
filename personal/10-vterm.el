(use-package vterm
  :straight t
  :ensure-system-package cmake
  :custom
  (vterm-timer-delay 0.05)
  :config
  (defun pt/turn-off-chrome ()
    (hl-line-mode -1)
    ;;(yascroll-bar-mode nil)
    (display-line-numbers-mode -1))

  (defun pt/project-run-vterm ()
    "Invoke `vterm' in the project's root.

 Switch to the project specific term buffer if it already exists."
    (interactive)
    (let* ((project (project-current))
           (buffer (format "*vterm %s*" (consult--project-name (project-root project)))))
      (unless (buffer-live-p (get-buffer buffer))
        (unless (require 'vterm nil 'noerror)
          (error "Package 'vterm' is not available"))
        (vterm buffer)
        (vterm-send-string (concat "cd " (project-root project)))
        (vterm-send-return))
      (switch-to-buffer buffer)))

  :hook (vterm-mode . pt/turn-off-chrome))

(use-package vterm-toggle
  :straight t
  :custom
  (vterm-toggle-fullscreen-p nil "Open a vterm in another window.")
  (vterm-toggle-scope 'project)
  :bind (("C-c t" . #'vterm-toggle)
         :map vterm-mode-map
         ("C-\\" . #'popper-cycle)
         ("s-t" . #'vterm) ; Open up new tabs quickly
         ("s-v" . #'vterm-yank)
         ("C-y" . #'vterm-yank)
         ("C-h" . #'vterm-send-backspace)
         ))
