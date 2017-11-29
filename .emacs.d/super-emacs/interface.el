;Disable menu-bar
(menu-bar-mode -1)

;Disable tool-bar
(tool-bar-mode -1)

;Disable scroll-bar
(scroll-bar-mode -1)

;Activate theme
(load-theme 'zenburn t)

(set-default-font "Input Mono 12" nil t)

;Set font
(custom-set-faces
 '(default ((t (:height 140))))
  '(neo-dir-link-face ((t (:height 120))))
  '(neo-file-link-face ((t (:height 120)))))
