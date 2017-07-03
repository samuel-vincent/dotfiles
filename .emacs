
;; Bootstrap configuration
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packagnes/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;; Clean up UI
(tool-bar-mode -1)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Use IDO mode
(require 'ido)
(ido-mode t)

;; Generated stuff
(custom-set-variables
 '(package-selected-packages (quote (use-package)))
 '(tool-bar-mode nil))
(custom-set-faces
 '(default ((t (:stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 180 :width normal :family "Fira Code")))))

