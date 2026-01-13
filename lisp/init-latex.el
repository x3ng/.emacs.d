(use-package auctex
  :ensure t
  :defer t
  :hook (LaTeX-mode . (lambda ()
                        ;; 基础设置
                        (setq TeX-auto-save t)
                        (setq TeX-parse-self t)
                        (setq-default TeX-master nil)
                        (setq TeX-engine 'xetex)
                        (setq TeX-PDF-mode t)
                        (setq TeX-save-query nil)
                        ;; PDF预览配置
                        (setq TeX-view-program-selection '((output-pdf "PDF Tools")))
                        (setq TeX-view-program-list '(("PDF Tools" TeX-pdf-tools-sync-view)))
                        (TeX-source-correlate-mode 1)
                        (setq TeX-source-correlate-method 'synctex)
                        (setq TeX-source-correlate-start-server t)
                        (setq TeX-source-correlate-jump-to-correlation t)
                        ;; 编译设置
                        (setq TeX-debug-bad-boxes t)
                        (setq TeX-debug-warnings t)
                        (setq TeX-command-default "LatexMk")
                        ;; 编辑增强
                        (TeX-fold-mode 1)
                        (reftex-mode 1)
                        (turn-on-auto-fill)
                        (outline-minor-mode 1)))
  :config
  ;; 编译后刷新PDF
  (add-hook 'TeX-after-compilation-finished-functions
            #'TeX-revert-document-buffer)
  ;; 编译设置
  (setq TeX-show-compilation t)
  
  (eval-after-load 'tex
    '(progn
       ;; 添加latexmk命令
       (add-to-list 'TeX-command-list
                    '("LatexMk" "latexmk -xelatex -synctex=1 -interaction=nonstopmode -shell-escape %s"
                      TeX-run-TeX nil t
                      :help "Run latexmk with xelatex")))))

;; PDF Tools配置
(use-package pdf-tools
  :ensure t
  :defer t
  :mode ("\\.pdf\\'" . pdf-view-mode)
  :config
  ;; 安装PDF Tools
  (pdf-tools-install :no-query)
  ;; 解决与行号模式的冲突
  (add-hook 'pdf-view-mode-hook (lambda () (display-line-numbers-mode -1)))
  (add-to-list 'pdf-view-incompatible-modes 'display-line-numbers-mode)
  ;; PDF查看优化
  (setq pdf-view-display-size 'fit-width)
  (setq pdf-view-resize-factor 1.1)
  (setq pdf-view-continuous t)
  (setq pdf-view-use-scaling t)
  ;; 缓存优化
  (setq pdf-cache-prefetch-delay 0.5)
  (setq pdf-cache-prefetch-threshold 10)
  ;; 自动恢复PDF视图
  (setq pdf-view-restore-filename t))

(provide 'init-latex)
