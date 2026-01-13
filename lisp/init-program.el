;;; toggle
(add-hook 'prog-mode-hook #'hs-minor-mode)

(use-package lsp-mode
  :ensure t
  :defer t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook
  (lsp-mode . lsp-enable-which-key-integration)
  :commands (lsp lsp-deferred)
  :custom
  (lsp-completion-provider :none)
  (lsp-headerline-breadcrumb-enable t)
  :config
  (advice-add #'lsp-completion-at-point :around #'cape-wrap-noninterruptible)
  :bind
  ("C-c l s" . lsp-ivy-workspace-symbol))

(use-package flycheck
  :ensure t
  :defer t
  :after lsp-mode)

(use-package lsp-ui
  :ensure t
  :defer t
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
  (setq lsp-ui-doc-position 'top))

;;; language config

(require 'init-cc)

(require 'init-python)

(require 'init-verilog)

(provide 'init-program)
