;;; python config

(use-package python
  :ensure nil
  :mode ("\\.py\\'" . python-mode)
  :hook ((python-mode . lsp-deferred)))

(use-package lsp-pyright
  :ensure t
  :defer t
  :after lsp-mode
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright))))

(use-package pyvenv
  :ensure t
  :defer t
  :hook (python-mode . pyvenv-mode)
  :config
  (setenv "WORKON_HOME" (expand-file-name "~/miniconda3/envs/"))
  (add-hook 'pyvenv-post-activate-hooks
            (lambda ()
              (pyvenv-restart-python)))
  :bind
  (:map python-mode-map
        ("C-c v" . pyvenv-workon)))

(provide 'init-python)
