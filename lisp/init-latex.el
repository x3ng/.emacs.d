(use-package auctex
  :ensure t
  :defer t
  :hook (LaTeX-mode . (lambda ()
                        (setq TeX-auto-save t)
                        (setq TeX-parse-self t)
                        (setq-default TeX-master nil)
                        (setq TeX-engine 'xelatex)
                        (TeX-source-correlate-mode 1)
                        (TeX-fold-mode 1))))

(use-package latex-preview-pane
  :ensure t
  :defer t
  :hook (LaTeX-mode . latex-preview-pane-mode))

(provide 'init-latex)
