(use-package cc-mode
  :ensure nil
  :defer t
  :hook (c-mode-common . (lambda ()
                           (setq c-basic-offset 4
                                 tab-width 4
                                 indent-tabs-mode nil)))
  :config
  (setq c-default-style "bsd")
  :hook ((c-mode c++-mode) . lsp-deferred)
  :init
  (setq lsp-clients-clangd-args
        '("-background-index"
          "-clang-tidy"
          "-header-insertion=never")))

(provide 'init-cc)
