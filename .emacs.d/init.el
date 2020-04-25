(load-file (expand-file-name "~/.emacs.d/package-setup.el"))

(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load-file custom-file)

(require 'better-defaults)

(load-theme 'sanityinc-tomorrow-night)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-splash-screen t)
(setq inhibit-startup-buffer-menu t)
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-hooks t)
(setq inhibit-startup-message t)
(setq inhibit-startup-screen t)
(load (expand-file-name "~/.quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(fset 'yes-or-no-p 'y-or-n-p)
(ido-mode)
(ido-everywhere)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq ring-bell-function 'ignore)
