((auto-complete status "installed" recipe
								(:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
											 (popup fuzzy)
											 :features auto-complete-config :post-init
											 (progn
												 (add-to-list 'ac-dictionary-directories
																			(expand-file-name "dict" default-directory))
												 (ac-config-default))))
 (cl-lib status "installed" recipe
				 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :website "http://elpa.gnu.org/packages/cl-lib.html"))
 (dash status "installed" recipe
			 (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (el-get status "installed" recipe
				 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
								("el-get.*\\.el$" "methods/")
								:features el-get :post-init
								(when
										(memq 'el-get
													(bound-and-true-p package-activated-list))
									(message "Deleting melpa bootstrap el-get")
									(unless package--initialized
										(package-initialize t))
									(when
											(package-installed-p 'el-get)
										(let
												((feats
													(delete-dups
													 (el-get-package-features
														(el-get-elpa-package-directory 'el-get)))))
											(el-get-elpa-delete-package 'el-get)
											(dolist
													(feat feats)
												(unload-feature feat t))))
									(require 'el-get))))
 (emacs-async status "installed" recipe
							(:name emacs-async :description "Simple library for asynchronous processing in Emacs" :type github :pkgname "jwiegley/emacs-async"))
 (fuzzy status "installed" recipe
				(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (ghub status "installed" recipe
			 (:name ghub :type github :description "Minuscule client for the Github API" :pkgname "magit/ghub"))
 (git-gutter status "installed" recipe
						 (:name git-gutter :description "Emacs port of GitGutter Sublime Text 2 Plugin" :website "https://github.com/syohex/emacs-git-gutter" :type github :pkgname "syohex/emacs-git-gutter"))
 (go-mode status "installed" recipe
					(:name go-mode :description "Major mode for the Go programming language" :type github :pkgname "dominikh/go-mode.el"))
 (haskell-mode status "installed" recipe
							 (:name haskell-mode :description "A Haskell editing mode" :type github :pkgname "haskell/haskell-mode" :info "." :build
											`(("make" ,(format "EMACS=%s" el-get-emacs)
												 "all"))
											:post-init
											(progn
												(require 'haskell-mode-autoloads)
												(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
												(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation))))
 (highlight-symbol status "installed" recipe
									 (:name highlight-symbol :description "Quickly highlight a symbol throughout the buffer and cycle through its locations." :type github :pkgname "nschum/highlight-symbol.el"))
 (let-alist status "installed" recipe
						(:name let-alist :description "Easily let-bind values of an assoc-list by their names." :builtin "25.0.50" :type elpa :website "https://elpa.gnu.org/packages/let-alist.html"))
 (magit-popup status "installed" recipe
							(:name magit-popup :website "https://github.com/magit/magit-popup" :description "Define prefix-infix-suffix command combos" :type github :pkgname "magit/magit-popup" :depends
										 (emacs-async dash)))
 (markdown-mode status "installed" recipe
								(:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type github :pkgname "jrblevin/markdown-mode" :prepare
											 (add-to-list 'auto-mode-alist
																		'("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (popup status "installed" recipe
				(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :depends cl-lib :pkgname "auto-complete/popup-el"))
 (powerline status "installed" recipe
						(:name powerline :website "https://github.com/milkypostman/powerline" :depends
									 (cl-lib)
									 :description "Powerline for Emacs" :type github :pkgname "milkypostman/powerline" :load-path "." :features powerline))
 (systemd-mode status "installed" recipe
							 (:name systemd-mode :description "Major mode for editing systemd units" :type github :pkgname "holomorph/systemd-mode"))
 (wakatime-mode status "installed" recipe
								(:name wakatime-mode :description "Automatic time tracking extension for WakaTime" :website "https://github.com/wakatime/wakatime-mode" :type github :pkgname "wakatime/wakatime-mode"))
 (with-editor status "installed" recipe
							(:name with-editor :description "Use the Emacsclient as $EDITOR" :type github :pkgname "magit/with-editor")))
