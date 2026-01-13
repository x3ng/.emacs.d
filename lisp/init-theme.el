(unless (package-installed-p 'dracula-theme)
  (package-install 'dracula-theme))

(load-theme 'dracula t)
(enable-theme 'dracula)

(provide 'init-theme)
