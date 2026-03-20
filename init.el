(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-package)
(my/initialize-package)

(require 'init-theme)
(my/load-theme)
(make-frame-visible (selected-frame))
(setq inhibit-redisplay nil)
(setq inhibit-message nil)
(redisplay)
(my/install-packages my-theme-package-list)

;;; emacs core config
(require 'init-core)

;;; basic config to enhance emacs
(require 'init-basic)

(require 'init-vertico)

(require 'init-corfu)

(require 'init-program)
(require 'init-cc)
(require 'init-python)

(require 'init-latex)

(provide 'init)
