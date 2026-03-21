;;; init-eglot.el

(use-package eglot
  :ensure nil
  :hook (prog-mode . eglot-ensure)
  :custom
  (eglot-autoshutdown t)
  (eglot-events-buffer-size 0)
  (eglot-ignored-server-capabilities '(:documentOnTypeFormattingProvider))
  :config
  (dolist (entry my-lsp-server-alist)
    (add-to-list 'eglot-server-programs entry))

  (setq my-lsp-reconnect-function
        (lambda ()
          (when (bound-and-true-p eglot--managed-mode)
            (eglot-reconnect (eglot-current-server))))))

(provide 'init-eglot)
