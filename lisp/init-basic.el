;;; use-package
(require 'use-package nil t)
(setq use-package-always-ensure t)

;;; benchmark
(use-package benchmark-init
  :ensure t
  :demand t
  :config
  (benchmark-init/activate)
  (add-hook 'after-init-hook 'benchmark-init/deactivate))

(setq column-number-mode t)
(setq confirm-kill-emacs 'yes-or-no-p)
(setq display-line-numbers-type 'visual)
(setq indent-tabs-mode nil)
(setq inhibit-startup-screen t)
(setq make-backup-files nil)
(setq package-selected-packages nil)  

(global-display-line-numbers-mode 1)
(global-auto-revert-mode t)
(electric-pair-mode t)
(delete-selection-mode t)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;;; disable custom-file
(setq custom-file (expand-file-name "~/.emacs.d/custom.el.disabled"))
(setq custom-safe-themes t)
(setq customize-save nil)
(setq custom-variable-set nil)
(setq custom-face-set nil)

;;; scale
(use-package default-text-scale
  :ensure t
  :config
  (default-text-scale-mode 1))

;;; clipboard
(use-package xclip
  :ensure t
  :config
  (xclip-mode 1))

;;; ivy 
(require 'init-ivy)

;;; rainbow delimiters
(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

;;; M-x history
(use-package amx
  :ensure t
  :init (amx-mode))

;;; switch window with number
(use-package ace-window
  :ensure t
  :bind (("C-x o" . 'ace-window)))

;;; move to the start and end of a line with emacs-mode
(use-package mwim
  :ensure t
  :bind
  (("C-a" . mwim-beginning-of-code-or-line)
   ("C-e" . mwim-end-of-code-or-line)))

;;; manage undo with a tree
(use-package undo-tree
  :ensure t
  :init (global-undo-tree-mode)
  :custom
  (undo-tree-auto-save-history nil))

;;; move pointer in emacs mode
(use-package avy
  :ensure t
  :bind
  (("C-'" . avy-goto-char-timer)
   ("M-g f" . avy-goto-line)))

;;; use which key to dispay commands
(use-package which-key
  :ensure t
  :init (which-key-mode))

(require 'init-completion)

(provide 'init-basic)
