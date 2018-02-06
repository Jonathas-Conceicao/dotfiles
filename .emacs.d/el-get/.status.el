((el-get status "installed" recipe
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
 (markdown-mode status "installed" recipe
								(:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type github :pkgname "jrblevin/markdown-mode" :prepare
											 (add-to-list 'auto-mode-alist
																		'("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (systemd-mode status "installed" recipe
							 (:name systemd-mode :description "Major mode for editing systemd units" :type github :pkgname "holomorph/systemd-mode"))
 (wakatime-mode status "installed" recipe
								(:name wakatime-mode :description "Automatic time tracking extension for WakaTime" :website "https://github.com/wakatime/wakatime-mode" :type github :pkgname "wakatime/wakatime-mode")))
