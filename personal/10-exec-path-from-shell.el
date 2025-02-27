(use-package exec-path-from-shell
  :straight t
  :init
  (dolist (var '("ATLASSIAN_USERNAME" "ATLASSIAN_API_TOKEN" "CR_PAT" "SNYK_API_TOKEN" "JF_USERNAME" "JF_ACCESS_TOKEN"))
    (add-to-list 'exec-path-from-shell-variables var))
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize)))
