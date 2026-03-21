;;; lang/init-cc.el

(use-package cc-mode
  :ensure nil
  :custom
  (c-default-style "bsd"))

(add-hook 'c-ts-base-mode-hook
          (lambda ()
            (setq-local c-ts-mode-indent-offset 4)))

(my-lsp-register-server 'c-ts-mode '("clangd" "-background-index" "-clang-tidy" "-header-insertion=never"))
(my-lsp-register-server 'c++-ts-mode '("clangd" "-background-index" "-clang-tidy" "-header-insertion=never"))

(provide 'init-cc)
