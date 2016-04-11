;; Programatically define the base package set
(require 'cl)
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(defvar my-packages
  '(async
    auto-complete ac-helm
    helm helm-ag helm-aws helm-make helm-swoop
    editorconfig
    exec-path-from-shell
    flycheck
    org org-ac
    magit gitconfig-mode gitignore-mode
    dockerfile-mode
    go-mode go-autocomplete
    jinja2-mode
    js3-mode json-mode jsx-mode
    less-css-mode
    mmm-mode mmm-jinja2
    sbt-mode scala-mode
    salt-mode
    skewer-mode skewer-less
    yaml-mode
    darcula-theme moe-theme solarized-theme
    powerline
    )
  "A list of packages that should always be installed")

(defun my-packages-installed-p ()
  (loop for p in my-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'my-packages)
