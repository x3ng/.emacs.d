;;; corfu completion
(use-package corfu
  :ensure t
  :init (global-corfu-mode)
  :custom
  (corfu-min-prefix-length 2)
  (corfu-auto-delay 0.5)
  (corfu-cycle t)
  (corfu-align-to-window t)
  (corfu-popupinfo-delay '(0.5 . 0.2))
  (corfu-preview-current nil)
  (corfu-auto t)
  (corfu-quit-no-match 'separator)
  (corfu-quit-at-boundary t)
  :config
  (corfu-history-mode 1)
  (corfu-popupinfo-mode))

(use-package cape
  :ensure t
  :defer t)

(provide 'init-completion)
