(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar *packages*
  '(base16-theme
    better-defaults
    cider
    exec-path-from-shell
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
    magit
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
    solarized-theme
    zenburn-theme))

(dolist (x *packages*)
  (when (not (require x nil 'no-error))
    (package-install x)))
