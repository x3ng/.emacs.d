;; inhibit gui
(setq inhibit-redisplay t)
(setq inhibit-message t)

;;; startup gc config
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold 16777216)))

(setq package-archives '(("gnu"     . "https://elpa.gnu.org/packages/")
                         ("melpa"   . "https://melpa.org/packages/")
                         ("nongnu"  . "https://elpa.nongnu.org/nongnu/")))

(setq default-frame-alist '(
  (tool-bar-lines . 0)
  (menu-bar-lines . 0)
  (scroll-bar-lines . 0)
  (vertical-scroll-bars . nil)
))

(require 'package)
(unless (bound-and-true-p package--initialized)
  (package-initialize))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-theme)

(setq inhibit-redisplay nil)
(setq inhibit-message nil)
(redisplay)

