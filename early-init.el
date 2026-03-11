(condition-case err
    (progn
      (setq inhibit-redisplay t)
      (setq inhibit-message t)
      (setq gc-cons-threshold most-positive-fixnum)
      (add-hook 'emacs-startup-hook
		(lambda ()
		  (setq gc-cons-threshold 16777216)))



      (setq default-frame-alist '(
				  (tool-bar-lines . 0)
				  (menu-bar-lines . 0)
				  (scroll-bar-lines . 0)
				  (vertical-scroll-bars . nil)
				  ))
      (setq initial-frame-alist '((visibility . nil))))
  (error
   (message "early init error: %s" (error-message-string err))))
