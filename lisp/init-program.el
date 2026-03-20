;;; init-program.el

(defvar my-lsp-reconnect-function nil)

(defun my-lsp-on-env-change ()
  (when my-lsp-reconnect-function
    (funcall my-lsp-reconnect-function)))

(use-package treesit-auto
  :ensure t
  :custom
  (treesit-auto-install 'prompt)
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))

(require 'init-eglot)

(add-hook 'prog-mode-hook
          (lambda ()
            (setq-local show-trailing-whitespace t)))

(provide 'init-program)
