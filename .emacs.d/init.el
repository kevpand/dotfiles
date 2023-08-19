;; Ignore cl deprecation warning we can't do anything about.
(setq byte-compile-warnings '(cl-functions))

(load-file (expand-file-name "~/.emacs.d/package-setup.el"))

(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load-file custom-file)
(global-set-key (kbd "C-x g") 'magit-status)
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
(fset 'yes-or-no-p 'y-or-n-p)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq ring-bell-function 'ignore)

(setenv "PATH"
        (concat (getenv "PATH")
                ":/Users/kevinanderson/.ghcup/bin"
                ":/Users/kevinanderson/.local/bin"
                ":/Library/TeX/texbin"
                ":/usr/local/bin"
                ":/usr/local/opt/llvm/bin"))
(setq exec-path
      (append exec-path
              '("/Users/kevinanderson/.ghcup/bin"
                "/Users/kevinanderson/.local/bin"
                "/Library/TeX/texbin"
                "/usr/local/bin"
                "/usr/local/opt/llvm/bin")))

(require 'better-defaults)

(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)
(setq-default cursor-type 'bar)

;; sample `helm' configuration use https://github.com/emacs-helm/helm/ for details
(helm-mode)
(require 'helm-xref)
(define-key global-map [remap find-file] #'helm-find-files)
(define-key global-map [remap execute-extended-command] #'helm-M-x)
(define-key global-map [remap switch-to-buffer] #'helm-mini)

(load (expand-file-name "~/.roswell/helper.el"))

(setq inferior-lisp-program "ros -Q run")
(set-face-attribute 'default nil :height 110)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
