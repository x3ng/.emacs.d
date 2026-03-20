;;; lang/init-cc.el

(use-package cc-mode
  :ensure nil
  :custom
  (c-default-style "bsd"))

(add-hook 'c-ts-base-mode-hook
          (lambda ()
            (setq-local c-ts-mode-indent-offset 4)))

(with-eval-after-load 'eglot
  (my-eglot-register-server
   'c-ts-mode
   '("clangd" "-background-index" "-clang-tidy" "-header-insertion=never"))
  (my-eglot-register-server
   'c++-ts-mode
   '("clangd" "-background-index" "-clang-tidy" "-header-insertion=never")))

(provide 'init-cc)
