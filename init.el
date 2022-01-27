(setq inhibit-startup-message t)

(tool-bar-mode -1)
(menu-bar-mode -1)

(scroll-bar-mode -1)

(global-linum-mode t)

(set-face-attribute 'default nil :height 100)

(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))



;; try
(use-package try
  :ensure t)


;; which-key
(use-package which-key
  :ensure t
  :config (progn
	    (which-key-setup-side-window-right-bottom)
	    (which-key-mode)
	    )
  )


;; auto-complete
(use-package auto-complete
  :ensure t
  :init (progn
	 (ac-config-default)
	 (global-auto-complete-mode t)
	 )
  )


;;all-the-icons
(use-package all-the-icons
  :ensure t)


;; neotree
(use-package neotree
  :ensure t
  :config (progn
	    (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
  :bind (("<f8>" . 'neotree-toggle))
  )

;; ace-window
(use-package ace-window
  :ensure t
  :bind(("C-x o" . 'ace-window)))

;; ergoemacs

(use-package ergoemacs-mode
  :ensure t
  :config(progn
	   (setq ergoemacs-theme nil)
 	   (setq ergoemacs-keyboard-layout "us")
	   (ergoemacs-mode 1)))

;; tema
(use-package dark-krystal-theme
  :ensure t
  :config (load-theme 'dark-krystal t))


;; flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode t))


;; Meus atalhos
(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "M-<up>") 'enlarge-window)
(global-set-key (kbd "M-<down>") 'shrink-window)
(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontall)

(custom-set-variables
 '(custom-safe-themes
   '("660376e0336bb04fae2dcf73ab6a1fe946ccea82b25f6800d51977e3a16de1b9" default))
 '(package-selected-packages
   '(flycheck dark-mint-them which-key use-package try neotree ergoemacs-mode dark-mint-theme auto-complete all-the-icons ace-window)))
(custom-set-faces)

