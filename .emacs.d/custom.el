(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(browse-url-browser-function 'eww-browse-url)
 '(browse-url-generic-program "o")
 '(browse-url-secondary-browser-function 'browse-url-generic)
 '(calendar-date-style 'iso)
 '(debug-on-error nil)
 '(grep-find-template
   "find <D> <X> -type f <F> -exec grep <C> -n -I --null -e <R> /dev/null \\{\\} +")
 '(grep-template "grep <X> <C> -n -I --null -e <R> <F>")
 '(helm-completion-style 'helm)
 '(initial-scratch-message "* Scratch

")
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-eww ol-gnus org-habit ol-info ol-irc ol-mhe ol-rmail ol-w3m))
 '(org-super-agenda-mode t nil nil "Customized with use-package org-super-agenda")
 '(org-tags-exclude-from-inheritance '("ATTACH"))
 '(sentence-end-double-space t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
