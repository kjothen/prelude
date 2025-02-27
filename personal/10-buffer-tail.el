(defadvice python (after message-tail activate)
  "goto point max after a python"
  (with-current-buffer "*Python*"
    (goto-char (point-max))
    (walk-windows (lambda (window)
                    (if (string-equal (buffer-name (window-buffer window)) "*Python*")
                        (set-window-point window (point-max))))
                  nil
                  t)))
