;;; init-eglot.el

(use-package eglot
  :ensure nil
  :hook (prog-mode . eglot-ensure)
  :custom
  (eglot-autoshutdown t)
  (eglot-events-buffer-size 0)
  :config
  (setq eglot-server-programs
        (append
         '((python-ts-mode . ("pyright-langserver" "--stdio"))
           (rust-ts-mode . ("rust-analyzer"))
           (c-ts-mode . ("clangd"))
           (c++-ts-mode . ("clangd"))
           (go-ts-mode . ("gopls"))
           (typescript-ts-mode . ("typescript-language-server" "--stdio")))
         eglot-server-programs))

  (setq my-lsp-reconnect-function
        (lambda ()
          (when (bound-and-true-p eglot--managed-mode)
            (eglot-reconnect (eglot-current-server))))))

(provide 'init-eglot)
