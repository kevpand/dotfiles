(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar *packages*
  '(auctex
    better-defaults
    exec-path-from-shell
    geiser
    geiser-chez
    geiser-chibi
    geiser-gambit
    geiser-guile
    geiser-kawa
    geiser-mit
    geiser-racket
    haskell-mode
    helm
    helm-xref
    magit
    projectile
    sicp
    slime
    sml-mode
    solarized-theme
    tuareg))

(dolist (x *packages*)
  (when (not (require x nil 'no-error))
    (package-install x)))
