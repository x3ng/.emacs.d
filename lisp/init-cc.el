;;; lang/init-cc.el

(use-package cc-mode
  :ensure nil
  :custom
  (c-default-style "bsd"))

(add-hook 'c-ts-base-mode-hook
          (lambda ()
            (setq-local c-ts-mode-indent-offset 4)))

(provide 'init-cc)
