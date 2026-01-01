(setq package-archives '(("gnu"     . "https://elpa.gnu.org/packages/")
                         ("melpa"   . "https://melpa.org/packages/")
                         ("nongnu"  . "https://elpa.nongnu.org/nongnu/")))
(package-initialize)

(require 'use-package)
(setq use-package-always-ensure t)

;;; native config
(when (display-graphic-p) (toggle-scroll-bar -1))
(global-display-line-numbers-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(global-auto-revert-mode t)

(electric-pair-mode t)
(delete-selection-mode t)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;;; scale
(use-package default-text-scale
  :ensure t
  :config
  (default-text-scale-mode 1))

;;; clipboard
(use-package xclip
  :ensure t
  :demand t
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

;;; completion all
(use-package corfu
  :ensure t
  :init (global-corfu-mode 1)
  :config
  (setq corfu-min-prefix-length 3)
  (setq corfu-auto-delay 0.5)
  (setq corfu-cycle t)
  (setq corfu-align-to-window t)
  (setq completion-category-overrides '((file (styles . (partial-completion)))))
  (setq corfu-popupinfo-delay '(0.5 . 0.2))
  (setq corfu-preview-current nil)
  (setq corfu-auto t)
  (setq corfu-quit-at-boundary nil)
  (setq corfu-quit-no-match t)
  (when window-system
    (setq corfu-popupinfo-mode 1)
    (setq corfu-bar-width 4)
    (setq corfu-popup-max-height 20)))

(provide 'init-basic)
