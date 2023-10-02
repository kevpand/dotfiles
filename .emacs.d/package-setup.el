(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar *packages*
  '(avy
    base16-theme
    better-defaults
    cider
    color-theme-sanityinc-tomorrow
    company
    dap-mode
    eglot
    exec-path-from-shell
    flycheck
    geiser
    geiser-chez
    geiser-chibi
    geiser-gambit
    geiser-guile
    geiser-kawa
    geiser-mit
    geiser-racket
    helm-lsp
    helm-xref
    hydra
    julia-mode
    julia-repl
    ledger-mode
    lsp-mode
    lsp-treemacs
    magit
    modern-cpp-font-lock
    paredit
    projectile
    rainbow-delimiters
    sicp
    sly
    sly-asdf
    sly-macrostep
    sly-named-readtables
    sly-quicklisp
    sly-repl-ansi-color
    treemacs
    which-key
    yasnippet))

(dolist (x *packages*)
  (when (not (require x nil 'no-error))
    (use-package x
      :ensure t
      :defer t)))

