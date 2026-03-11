(use-package cc-mode
  :ensure nil
  :defer t
  :hook
  (c-mode-common . (lambda ()
                     (setq-local
		      c-basic-offset 4
                      tab-width 4
                      indent-tabs-mode nil)))
  ((c-mode c++-mode) . lsp-deferred)
  :custom
  (c-default-style "bsd")
  :init
  (setq lsp-clients-clangd-args
        '("-background-index"
          "-clang-tidy"
          "-header-insertion=never")))

(provide 'init-cc)
