;;; use-package
(require 'use-package nil t)

;;; benchmark
(use-package benchmark-init
  :ensure t
  :demand t
  :config
  (benchmark-init/activate)
  (add-hook 'after-init-hook 'benchmark-init/deactivate))

(setq indent-tabs-mode nil)
(setq column-number-mode t)
(setq confirm-kill-emacs 'yes-or-no-p)
(setq display-line-numbers-type 'visual)
(setq inhibit-startup-screen t)
(setq make-backup-files nil)

(global-display-line-numbers-mode 1)
(global-auto-revert-mode t)
(delete-selection-mode t)
(electric-pair-mode 1)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;;; disable custom-file
(setq custom-file (expand-file-name "~/.emacs.d/custom.el.disabled"))
(setq custom-safe-themes t)
(setq customize-save nil)
(setq custom-variable-set nil)
(setq custom-face-set nil)

(provide 'init-core)
