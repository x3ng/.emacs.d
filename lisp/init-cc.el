;;; init-cc.el --- Modern C config with use-package

(use-package cc-mode
  :ensure nil
  :defer t
  :hook (c-mode-common . (lambda ()
                           (setq c-basic-offset 4
                                 tab-width 4
                                 indent-tabs-mode nil)))
  :config
  (setq c-default-style "bsd"))

(provide 'init-cc)
