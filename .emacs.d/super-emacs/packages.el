;Create repositories cache, if required
(when (not package-archive-contents)
  (package-refresh-contents))

;Declare a list of required packages
(defvar super-emacs--required-packages
  '(helm
    multiple-cursors
    ace-jump-mode
    switch-window
    buffer-move
    auto-complete
    ztree
    undo-tree
    neotree
    material-theme
    dired-launch
    meta-presenter
    myterminal-controls
    golden-ratio
;    turkish
    projectile
    magit
    markdown-mode
    zenburn-theme
    shell-pop))

;Install required packages
(mapc (lambda (p)
        (package-install p))
      super-emacs--required-packages)

;Load default auto-complete configs
(ac-config-default)

;Start undo-tree
(global-undo-tree-mode)

;Set hooks for dired-launch-mode
(add-hook 'dired-mode-hook
          'dired-launch-mode)

;Set up ace-jump-mode
(autoload 'ace-jump-mode 
  "ace-jump-mode" 
  "Emacs quick move minor mode"
  t)
(autoload 'ace-jump-mode-pop-mark 
  "ace-jump-mode" 
  "Ace jump back:-"
  t)

;Set up helm-mode
(helm-mode 1)
(helm-autoresize-mode 1)
(setq helm-split-window-in-side-p
      t)

(setq neo-theme 'arrow)
(neotree)
;(setq neo-smart-open t)

(golden-ratio-mode 1)
(projectile-mode 1)
(setq projectile-switch-project-action 'neotree-projectile-action)
;(require 'turkish)

(require 'shell-pop)
(setq shell-pop-shell-type (quote ("ansi-term" "*ansi-term*" (lambda nil (ansi-term shell-pop-term-shell)))))
(setq shell-pop-term-shell "/usr/local/bin/fish")
(shell-pop--set-shell-type 'shell-pop-shell-type shell-pop-shell-type)
(global-set-key (kbd "C-x t") 'shell-pop)
