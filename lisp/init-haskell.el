(use-package haskell-mode
  :ensure t
  :defer t
  :mode ("\\.hs\\'" . haskell-mode)
  :hook (haskell-mode . lsp-deferred)
  :custom
  (lsp-haskell-formatting-provider "ormolu")
  (haskell-process-type 'ghci)
  (haskell-process-path-ghci "ghci"))

(use-package lsp-haskell
  :ensure t
  :after lsp-mode
  :config
  (setq lsp-haskell-formatting-provider "ormolu")
  (setq lsp-haskell-server-path "haskell-language-server-wrapper"))

(provide 'init-haskell)
