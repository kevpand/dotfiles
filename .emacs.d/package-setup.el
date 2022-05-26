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
    ledger-mode
    lsp-haskell
    lsp-mode
    lsp-treemacs
    magit
    modern-cpp-font-lock
    paredit
    projectile
    rainbow-delimiters
    sicp
    treemacs
    which-key
    yasnippet))

(dolist (x *packages*)
  (when (not (require x nil 'no-error))
    (package-install x)))
