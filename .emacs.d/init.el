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

(require 'lsp-haskell)
(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'haskell-literate-mode-hook #'lsp)

;; sample `helm' configuration use https://github.com/emacs-helm/helm/ for details
(helm-mode)
(require 'helm-xref)
(define-key global-map [remap find-file] #'helm-find-files)
(define-key global-map [remap execute-extended-command] #'helm-M-x)
(define-key global-map [remap switch-to-buffer] #'helm-mini)

(which-key-mode)
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)
(add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      treemacs-space-between-root-nodes nil
      company-idle-delay 0.0
      company-minimum-prefix-length 1
      lsp-idle-delay 0.1)  ;; clangd is fast

(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (require 'dap-cpptools)
  (yas-global-mode))

(load (expand-file-name "~/.roswell/helper.el"))

(setq inferior-lisp-program "ros -Q run")
(set-face-attribute 'default nil :height 110)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
