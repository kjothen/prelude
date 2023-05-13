;;; Workarounds
;; Failed to verify signature spinner-1.7.4.tar.sig:
;; No public key for 066DAFCB81E42C40 created at 2021-07-02T10:10:02+0100 using RSA
;; Command output:
;; gpg: keyblock resource '/Users/kieran/.emacs.d/elpa/gnupg/pubring.kbx': No such file or directory
;; gpg: Signature made Fri  2 Jul 10:10:02 2021 BST
;; gpg:                using RSA key C433554766D3DDC64221BFAA066DAFCB81E42C40
;; gpg: Can't check signature: No public key
(setq package-check-signature nil)

;; Required for MacOS X ventura pre Emacs 29
(add-to-list 'image-types 'svg)

;; overriding image.el function image-type-available-p
(defun image-type-available-p (type)
  "Return t if image type TYPE is available.
Image types are symbols like `xbm' or `jpeg'."
  (if (eq 'svg type)
      nil
    (and (fboundp 'init-image-library)
         (init-image-library type))))

;;; Workarounds ends here

;; Disable package.el in favor of straight.el
(setq package-enable-at-startup nil)

(provide 'early-init)
;;; early-init.el ends here
