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
 '(corfu-bar-width 0.6)
 '(corfu-min-width 20)
 '(debug-on-error nil)
 '(grep-find-template
   "find <D> <X> -type f <F> -exec grep <C> -n -I --null -e <R> /dev/null \\{\\} +")
 '(grep-template "grep <X> <C> -n -I --null -e <R> <F>")
 '(helm-completion-style 'helm)
 '(initial-scratch-message "* Scratch

")
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-eww ol-gnus org-habit ol-info ol-irc ol-mhe ol-rmail ol-w3m))
 '(org-ql-views
   '((#("Unternehmungen" 0 14
	(face nil))
      :buffers-files
      ("/home/karsten/Nextcloud/Documents/org/2021.org" "/home/karsten/Nextcloud/Documents/org/contacts.org" "/home/karsten/Nextcloud/Documents/org/journal.org" "/home/karsten/Nextcloud/Documents/org/personal.org" "/home/karsten/Nextcloud/Documents/org/refile.org" "/home/karsten/Nextcloud/Documents/org/workAgenda.org" "/home/karsten/nextcloud_work/schule/schule.org" "/home/karsten/Nextcloud/Documents/roam/20210727233627-programming.org" "/home/karsten/Nextcloud/Documents/roam/20210727233733-programmiersprachen.org" "/home/karsten/Nextcloud/Documents/roam/20210727234405-access_vba.org" "/home/karsten/Nextcloud/Documents/roam/20210727234530-elisp.org" "/home/karsten/Nextcloud/Documents/roam/20210727235052-algorithmen.org" "/home/karsten/Nextcloud/Documents/roam/20210727235110-design_patterns.org" "/home/karsten/Nextcloud/Documents/roam/20210728132306-betriebssysteme.org" "/home/karsten/Nextcloud/Documents/roam/20210728132336-gnu.org" "/home/karsten/Nextcloud/Documents/roam/20210728132348-linux.org" "/home/karsten/Nextcloud/Documents/roam/20210728132419-arch.org" "/home/karsten/Nextcloud/Documents/roam/20210728132441-guix.org" "/home/karsten/Nextcloud/Documents/roam/20210728132933-hobbys.org" "/home/karsten/Nextcloud/Documents/roam/20210728133110-computer.org" "/home/karsten/Nextcloud/Documents/roam/20210728133133-software.org" "/home/karsten/Nextcloud/Documents/roam/20210728133328-emacs.org" "/home/karsten/Nextcloud/Documents/roam/20210728133857-windows.org" "/home/karsten/Nextcloud/Documents/roam/20210728133935-microsoft.org" "/home/karsten/Nextcloud/Documents/roam/20210728154505-tennis.org" "/home/karsten/Nextcloud/Documents/roam/20210728161257-gnu_linux.org" "/home/karsten/Nextcloud/Documents/roam/20210728161346-macos.org" "/home/karsten/Nextcloud/Documents/roam/20210728232651-markus_schneider.org" "/home/karsten/Nextcloud/Documents/roam/20210729105156-org_mode.org" "/home/karsten/Nextcloud/Documents/roam/20210729105258-org_mode_repeating_tasks.org" "/home/karsten/Nextcloud/Documents/roam/20210731163557-verkabelung_eigenes_haus.org" "/home/karsten/Nextcloud/Documents/roam/20210803103936-access_vba_select_case_statement.org")
      :query
      (tags "unternehmung")
      :sort
      (date)
      :narrow nil :super-groups
      ((:auto-ts))
      :title
      #("Unternehmungen" 0 14
	(face nil)))
     ("Overview: Agenda-like" :buffers-files org-agenda-files :query
      (and
       (not
	(done))
       (or
	(habit)
	(deadline auto)
	(scheduled :to today)
	(ts-active :on today)))
      :sort
      (todo priority date)
      :super-groups org-super-agenda-groups :title "Agenda-like")
     ("Overview: NEXT tasks" :buffers-files org-agenda-files :query
      (todo "NEXT")
      :sort
      (date priority)
      :super-groups org-super-agenda-groups :title "Overview: NEXT tasks")
     ("Calendar: Today" :buffers-files org-agenda-files :query
      (ts-active :on today)
      :title "Today" :super-groups org-super-agenda-groups :sort
      (priority))
     ("Calendar: This week" .
      #[0 "\301 \302\303\304\305\304\306\304\307\310\301 \311!>\204 \312\313\314D\"\210\211\315H\204\232 \211\315\316\317\320\311!>\2048 \312\313\314D\"\210\321H\204\223 \321\311!>\210\322H\323H    \324H
\325H\326H\327H\203\215 \203\215 \203\215 \203\215 \203\215 \211\203\215 \330\331&!\266\206\202\221 \330 \266\206I\210\321H\"!I\210\211\315H\262[
#&\302\303\332\305\333\306\333\307\310\327\301 \311!>\204\300 \312\313\314D\"\210\211\315H\204>\211\315\316\317\320\311!>\204\334 \312\313\314D\"\210\321H\2047\321\311!>\210\322H\323H     \324H
\325H\326H\327H\2031\2031\2031\2031\2031\211\2031\330\331&!\266\206\2025\330 \266\206I\210\321H\"!I\210\211\315H\262Z#&\334\335 \336\337\340\257\341\342\343\344\345\346&\207"
	  [cl-struct-ts-tags ts-now ts-apply :hour 0 :minute :second ts-adjust day type-of signal wrong-type-argument ts 7 string-to-number format-time-string "%w" 17 3 2 1 4 5 6 float-time encode-time 23 59 org-ql-search org-agenda-files ts-active :from :to :title "This week" :super-groups org-super-agenda-groups :sort
			     (priority)]
	  34 "Show items with an active timestamp during this calendar week." nil])
     ("Calendar: Next week" .
      #[0 "\301\302\303\304 #\305\306\307\310\307\311\307\301\302\304 \312!>\204  \313\314\315D\"\210\211\303H\204\236 \211\303\316\317\320\312!>\204< \313\314\315D\"\210\321H\204\227 \321\312!>\210\322H\323H        \324H
\325H\326H\327H\203\221 \203\221 \203\221 \203\221 \203\221 \211\203\221 \330\331&!\266\206\202\225 \330 \266\206I\210\321H\"!I\210\211\303H\262[
#&\305\306\332\310\333\311\333\301\302\327\304 \312!>\204\304 \313\314\315D\"\210\211\303H\204B\211\303\316\317\320\312!>\204\340 \313\314\315D\"\210\321H\204;\321\312!>\210\322H\323H     \324H
\325H\326H\327H\2035\2035\2035\2035\2035\211\2035\330\331&!\266\206\2029\330 \266\206I\210\321H\"!I\210\211\303H\262Z#&\334\335 \336\337\340\257\341\342\343\344\345\346&\207"
	  [cl-struct-ts-tags ts-adjust day 7 ts-now ts-apply :hour 0 :minute :second type-of signal wrong-type-argument ts string-to-number format-time-string "%w" 17 3 2 1 4 5 6 float-time encode-time 23 59 org-ql-search org-agenda-files ts-active :from :to :title "Next week" :super-groups org-super-agenda-groups :sort
			     (priority)]
	  34 "Show items with an active timestamp during the next calendar week." nil])
     ("Review: Recently timestamped" . org-ql-view-recent-items)
     (#("Review: Dangling tasks" 0 22
	(help-echo "Tasks whose ancestor is done"))
      :buffers-files org-agenda-files :query
      (and
       (todo)
       (ancestors
	(done)))
      :title
      #("Review: Dangling tasks" 0 22
	(help-echo "Tasks whose ancestor is done"))
      :sort
      (todo priority date)
      :super-groups
      ((:auto-parent t)))
     (#("Review: Stale tasks" 0 19
	(help-echo "Tasks without a timestamp in the past 2 weeks"))
      :buffers-files org-agenda-files :query
      (and
       (todo)
       (not
	(ts :from -14)))
      :title
      #("Review: Stale tasks" 0 19
	(help-echo "Tasks without a timestamp in the past 2 weeks"))
      :sort
      (todo priority date)
      :super-groups
      ((:auto-parent t)))
     (#("Review: Stuck projects" 0 22
	(help-echo "Tasks with sub-tasks but no NEXT sub-tasks"))
      :buffers-files org-agenda-files :query
      (and
       (todo)
       (descendants
	(todo))
       (not
	(descendants
	 (todo "NEXT"))))
      :title
      #("Review: Stuck projects" 0 22
	(help-echo "Tasks with sub-tasks but no NEXT sub-tasks"))
      :sort
      (date priority)
      :super-groups org-super-agenda-groups)))
 '(org-src-window-setup 'current-window)
 '(org-super-agenda-mode t nil nil "Customized with use-package org-super-agenda")
 '(org-tags-exclude-from-inheritance '("ATTACH"))
 '(popper-display-control nil)
 '(popper-group-function 'popper-group-by-directory)
 '(project-switch-commands
   '((project-find-file "Find file" nil)
     (project-switch-to-buffer "buffer" nil)
     (project-find-regexp "Find regexp" nil)
     (project-find-dir "Find directory" nil)
     (project-vc-dir "VC-Dir" nil)
     (project-eshell "Eshell" nil)
     (magit-project-status "Magit" 71)))
 '(read-buffer-completion-ignore-case t)
 '(read-file-name-completion-ignore-case t)
 '(sentence-end-double-space t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
