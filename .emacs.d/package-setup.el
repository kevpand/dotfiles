(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
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
    helm-lsp
    helm-xref
    hydra
    lsp-mode
    lsp-treemacs
    magit
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
