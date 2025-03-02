(setq
 default-directory "~/Documents/github.nosync/")

(setq
 make-backup-files nil
 auto-save-default nil
 create-lockfiles nil)

(add-hook 'before-save-hook #'delete-trailing-whitespace)
(setq require-final-newline t)

(when (window-system)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1))

(defun dired-up-directory-same-buffer ()
  "Go up in the same buffer."
  (find-alternate-file ".."))

(defun my-dired-mode-hook ()
  (put 'dired-find-alternate-file 'disabled nil) ; Disables the warning.
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
  (define-key dired-mode-map (kbd "^") 'dired-up-directory-same-buffer))

(add-hook 'dired-mode-hook #'my-dired-mode-hook)

(setq dired-use-ls-dired nil)

(setq enable-recursive-minibuffers t)
(minibuffer-depth-indicate-mode)
