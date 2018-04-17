;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get"
;;;;;;  "el-get/el-get.el" "725730d0425ec018bd83aa83226d5e9e")
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads nil "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get-bundle"
;;;;;;  "el-get/el-get-bundle.el" "c8dec168e93c1d40df86351c317b33bc")
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get-bundle" "\


\(fn SRC SYNC)" nil nil)

(autoload 'el-get-bundle "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The property list may include the keyword
`:bundle-sync' with a value of either `t' or `nil' to request that
`el-get-bundle' invoke `el-get' synchronously (respectively asynchronously).
The keyword `:bundle-async' is the inverse of `:bundle-sync'.
\(Note that the request to run el-get synchronously may not be respected in all
circumstances: see the definition of `el-get-bundle-el-get' for details.)
The FORM after the property list is treated as initialization code,
which is actually an `:after' property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(function-put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(function-put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads nil "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get-check"
;;;;;;  "el-get/el-get-check.el" "6145ed8054e30cf9530ba7c381446a14")
;;; Generated autoloads from el-get/el-get-check.el

(autoload 'el-get-check-recipe "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get-check" "\
Check the format of the recipe.
Please run this command before sending a pull request.
Usage: M-x el-get-check-recipe RET

You can run this function from checker script like this:
    test/check-recipe.el PATH/TO/RECIPE.rcp

When used as a lisp function, FILE-OR-BUFFER must be a buffer
object or a file path.

\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads nil "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" "6758aae2b1f25eba5c586f5035d93279")
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "../../Github/PersonalSH/.emacs.d/el-get/el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auto-complete/auto-complete" "../../../../.emacs.d/el-get/auto-complete/auto-complete.el"
;;;;;;  "0f564b17b1ef2e700470197f0218dc22")
;;; Generated autoloads from ../../../../.emacs.d/el-get/auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global Auto-Complete mode is enabled.
See the `global-auto-complete-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "auto-complete/auto-complete-config" "../../../../.emacs.d/el-get/auto-complete/auto-complete-config.el"
;;;;;;  "ff41e174795402bf5f86dfbc7e9060d2")
;;; Generated autoloads from ../../../../.emacs.d/el-get/auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads nil "el-get/el-get" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "725730d0425ec018bd83aa83226d5e9e")
;;; Generated autoloads from ../../../../.emacs.d/el-get/el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads nil "el-get/el-get-bundle" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "c8dec168e93c1d40df86351c317b33bc")
;;; Generated autoloads from ../../../../.emacs.d/el-get/el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC SYNC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The property list may include the keyword
`:bundle-sync' with a value of either `t' or `nil' to request that
`el-get-bundle' invoke `el-get' synchronously (respectively asynchronously).
The keyword `:bundle-async' is the inverse of `:bundle-sync'.
\(Note that the request to run el-get synchronously may not be respected in all
circumstances: see the definition of `el-get-bundle-el-get' for details.)
The FORM after the property list is treated as initialization code,
which is actually an `:after' property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(function-put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(function-put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads nil "el-get/el-get-check" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "6145ed8054e30cf9530ba7c381446a14")
;;; Generated autoloads from ../../../../.emacs.d/el-get/el-get/el-get-check.el

(autoload 'el-get-check-recipe "el-get/el-get-check" "\
Check the format of the recipe.
Please run this command before sending a pull request.
Usage: M-x el-get-check-recipe RET

You can run this function from checker script like this:
    test/check-recipe.el PATH/TO/RECIPE.rcp

When used as a lisp function, FILE-OR-BUFFER must be a buffer
object or a file path.

\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "6758aae2b1f25eba5c586f5035d93279")
;;; Generated autoloads from ../../../../.emacs.d/el-get/el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "flyspell/flyspell-1.7q" "../../../../.emacs.d/el-get/flyspell/flyspell-1.7q.el"
;;;;;;  "e3e4370dce9715ecf39e66ed689a49f0")
;;; Generated autoloads from ../../../../.emacs.d/el-get/flyspell/flyspell-1.7q.el

(defvar flyspell-mode-line-string " Fly" "\
*String displayed on the modeline when flyspell is active.
Set this to nil if you don't want a modeline indicator.")

(custom-autoload 'flyspell-mode-line-string "flyspell/flyspell-1.7q" t)

(autoload 'flyspell-prog-mode "flyspell/flyspell-1.7q" "\
Turn on `flyspell-mode' for comments and strings.

\(fn)" t nil)

(defvar flyspell-mode nil)

(defvar flyspell-mode-map (make-sparse-keymap))

(autoload 'flyspell-mode "flyspell/flyspell-1.7q" "\
Minor mode performing on-the-fly spelling checking.
Ispell is automatically spawned on background for each entered words.
The default flyspell behavior is to highlight incorrect words.
With no argument, this command toggles Flyspell mode.
With a prefix argument ARG, turn Flyspell minor mode on iff ARG is positive.
  
Bindings:
\\[ispell-word]: correct words (using Ispell).
\\[flyspell-auto-correct-word]: automatically correct word.
\\[flyspell-auto-correct-previous-word]: automatically correct the last misspelled word.
\\[flyspell-correct-word] (or down-mouse-2): popup correct words.

Hooks:
This runs `flyspell-mode-hook' after flyspell is entered.

Remark:
`flyspell-mode' uses `ispell-mode'.  Thus all Ispell options are
valid.  For instance, a personal dictionary can be used by
invoking `ispell-change-dictionary'.

Consider using the `ispell-parser' to check your text.  For instance
consider adding:
\(add-hook 'tex-mode-hook (function (lambda () (setq ispell-parser 'tex))))
in your .emacs file.

\\[flyspell-region] checks all words inside a region.
\\[flyspell-buffer] checks the whole buffer.

\(fn &optional ARG)" t nil)

(if (fboundp 'add-minor-mode) (add-minor-mode 'flyspell-mode 'flyspell-mode-line-string flyspell-mode-map nil 'flyspell-mode) (or (assoc 'flyspell-mode minor-mode-alist) (setq minor-mode-alist (cons '(flyspell-mode flyspell-mode-line-string) minor-mode-alist))) (or (assoc 'flyspell-mode minor-mode-map-alist) (setq minor-mode-map-alist (cons (cons 'flyspell-mode flyspell-mode-map) minor-mode-map-alist))))

(autoload 'flyspell-version "flyspell/flyspell-1.7q" "\
The flyspell version

\(fn)" t nil)

(autoload 'flyspell-mode-off "flyspell/flyspell-1.7q" "\
Turn Flyspell mode off.

\(fn)" nil nil)

(autoload 'flyspell-region "flyspell/flyspell-1.7q" "\
Flyspell text between BEG and END.

\(fn BEG END)" t nil)

(autoload 'flyspell-buffer "flyspell/flyspell-1.7q" "\
Flyspell whole buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "git-gutter/git-gutter" "../../../../.emacs.d/el-get/git-gutter/git-gutter.el"
;;;;;;  "865be5b8fc0e28efa9d7734589fbe303")
;;; Generated autoloads from ../../../../.emacs.d/el-get/git-gutter/git-gutter.el

(autoload 'git-gutter:linum-setup "git-gutter/git-gutter" "\
Setup for linum-mode.

\(fn)" nil nil)

(autoload 'git-gutter-mode "git-gutter/git-gutter" "\
Git-Gutter mode

\(fn &optional ARG)" t nil)

(defvar global-git-gutter-mode nil "\
Non-nil if Global Git-Gutter mode is enabled.
See the `global-git-gutter-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-git-gutter-mode'.")

(custom-autoload 'global-git-gutter-mode "git-gutter/git-gutter" nil)

(autoload 'global-git-gutter-mode "git-gutter/git-gutter" "\
Toggle Git-Gutter mode in all buffers.
With prefix ARG, enable Global Git-Gutter mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Git-Gutter mode is enabled in all buffers where
`git-gutter--turn-on' would do it.
See `git-gutter-mode' for more information on Git-Gutter mode.

\(fn &optional ARG)" t nil)

(autoload 'git-gutter "git-gutter/git-gutter" "\
Show diff information in gutter

\(fn)" t nil)

(autoload 'git-gutter:toggle "git-gutter/git-gutter" "\
Toggle to show diff information.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "go-mode/go-guru" "../../../../.emacs.d/el-get/go-mode/go-guru.el"
;;;;;;  "063a7c64f07383fe19dd053db7e44b84")
;;; Generated autoloads from ../../../../.emacs.d/el-get/go-mode/go-guru.el

(autoload 'go-guru-set-scope "go-mode/go-guru" "\
Set the scope for the Go guru, prompting the user to edit the previous scope.

The scope restricts analysis to the specified packages.
Its value is a comma-separated list of patterns of these forms:
	golang.org/x/tools/cmd/guru     # a single package
	golang.org/x/tools/...          # all packages beneath dir
	...                             # the entire workspace.

A pattern preceded by '-' is negative, so the scope
	encoding/...,-encoding/xml
matches all encoding packages except encoding/xml.

\(fn)" t nil)

(autoload 'go-guru-callees "go-mode/go-guru" "\
Show possible callees of the function call at the current point.

\(fn)" t nil)

(autoload 'go-guru-callers "go-mode/go-guru" "\
Show the set of callers of the function containing the current point.

\(fn)" t nil)

(autoload 'go-guru-callstack "go-mode/go-guru" "\
Show an arbitrary path from a root of the call graph to the
function containing the current point.

\(fn)" t nil)

(autoload 'go-guru-definition "go-mode/go-guru" "\
Jump to the definition of the selected identifier.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'go-guru-definition-other-window "go-mode/go-guru" "\
Jump to the defintion of the selected identifier in another window

\(fn)" t nil)

(autoload 'go-guru-describe "go-mode/go-guru" "\
Describe the selected syntax, its kind, type and methods.

\(fn)" t nil)

(autoload 'go-guru-pointsto "go-mode/go-guru" "\
Show what the selected expression points to.

\(fn)" t nil)

(autoload 'go-guru-implements "go-mode/go-guru" "\
Describe the 'implements' relation for types in the package
containing the current point.

\(fn)" t nil)

(autoload 'go-guru-freevars "go-mode/go-guru" "\
Enumerate the free variables of the current selection.

\(fn)" t nil)

(autoload 'go-guru-peers "go-mode/go-guru" "\
Enumerate the set of possible corresponding sends/receives for
this channel receive/send operation.

\(fn)" t nil)

(autoload 'go-guru-referrers "go-mode/go-guru" "\
Enumerate all references to the object denoted by the selected
identifier.

\(fn)" t nil)

(autoload 'go-guru-whicherrs "go-mode/go-guru" "\
Show globals, constants and types to which the selected
expression (of type 'error') may refer.

\(fn)" t nil)

(autoload 'go-guru-unhighlight-identifiers "go-mode/go-guru" "\
Remove highlights from previously highlighted identifier.

\(fn)" nil nil)

(autoload 'go-guru-hl-identifier "go-mode/go-guru" "\
Highlight all instances of the identifier under point. Removes
highlights from previously highlighted identifier.

\(fn)" t nil)

(autoload 'go-guru-hl-identifier-mode "go-mode/go-guru" "\
Highlight instances of the identifier at point after a short
timeout.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "go-mode/go-mode" "../../../../.emacs.d/el-get/go-mode/go-mode.el"
;;;;;;  "56ebc9d8bdb6ef3f2ec99822abb13186")
;;; Generated autoloads from ../../../../.emacs.d/el-get/go-mode/go-mode.el

(autoload 'go-mode "go-mode/go-mode" "\
Major mode for editing Go source text.

This mode provides (not just) basic editing capabilities for
working with Go code. It offers almost complete syntax
highlighting, indentation that is almost identical to gofmt and
proper parsing of the buffer content to allow features such as
navigation by function, manipulation of comments or detection of
strings.

In addition to these core features, it offers various features to
help with writing Go code. You can directly run buffer content
through gofmt, read godoc documentation from within Emacs, modify
and clean up the list of package imports or interact with the
Playground (uploading and downloading pastes).

The following extra functions are defined:

- `gofmt'
- `godoc' and `godoc-at-point'
- `go-import-add'
- `go-remove-unused-imports'
- `go-goto-arguments'
- `go-goto-docstring'
- `go-goto-function'
- `go-goto-function-name'
- `go-goto-imports'
- `go-goto-return-values'
- `go-goto-method-receiver'
- `go-play-buffer' and `go-play-region'
- `go-download-play'
- `godef-describe' and `godef-jump'
- `go-coverage'
- `go-set-project'
- `go-reset-gopath'

If you want to automatically run `gofmt' before saving a file,
add the following hook to your emacs configuration:

\(add-hook 'before-save-hook #'gofmt-before-save)

If you want to use `godef-jump' instead of etags (or similar),
consider binding godef-jump to `M-.', which is the default key
for `find-tag':

\(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd \"M-.\") #'godef-jump)))

Please note that godef is an external dependency. You can install
it with

go get github.com/rogpeppe/godef


If you're looking for even more integration with Go, namely
on-the-fly syntax checking, auto-completion and snippets, it is
recommended that you look at flycheck
\(see URL `https://github.com/flycheck/flycheck') or flymake in combination
with goflymake (see URL `https://github.com/dougm/goflymake'), gocode
\(see URL `https://github.com/nsf/gocode'), go-eldoc
\(see URL `github.com/syohex/emacs-go-eldoc') and yasnippet-go
\(see URL `https://github.com/dominikh/yasnippet-go')

\(fn)" t nil)

(add-to-list 'auto-mode-alist (cons "\\.go\\'" 'go-mode))

(autoload 'gofmt-before-save "go-mode/go-mode" "\
Add this to .emacs to run gofmt on the current buffer when saving:
\(add-hook 'before-save-hook 'gofmt-before-save).

Note that this will cause ‘go-mode’ to get loaded the first time
you save any file, kind of defeating the point of autoloading.

\(fn)" t nil)

(autoload 'godoc "go-mode/go-mode" "\
Show Go documentation for QUERY, much like \\<go-mode-map>\\[man].

\(fn QUERY)" t nil)

(autoload 'go-download-play "go-mode/go-mode" "\
Download a paste from the playground and insert it in a Go buffer.
Tries to look for a URL at point.

\(fn URL)" t nil)

;;;***

;;;### (autoloads nil "go-mode/go-rename" "../../../../.emacs.d/el-get/go-mode/go-rename.el"
;;;;;;  "99028a0e5b90ac2c52c86deebea21ae4")
;;; Generated autoloads from ../../../../.emacs.d/el-get/go-mode/go-rename.el

(autoload 'go-rename "go-mode/go-rename" "\
Rename the entity denoted by the identifier at point, using
the `gorename' tool. With FORCE, call `gorename' with the
`-force' flag.

\(fn NEW-NAME &optional FORCE)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/ghc-core" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "96453ab274d3f4542e7ccf9af74bbfc2")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/ghc-core.el

(let ((loads (get 'ghc-core 'custom-loads))) (if (member '"haskell-mode/ghc-core" loads) nil (put 'ghc-core 'custom-loads (cons '"haskell-mode/ghc-core" loads))))

(autoload 'ghc-core-create-core "haskell-mode/ghc-core" "\
Compile and load the current buffer as tidy core.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.hcr\\'" . ghc-core-mode))

(add-to-list 'auto-mode-alist '("\\.dump-simpl\\'" . ghc-core-mode))

(autoload 'ghc-core-mode "haskell-mode/ghc-core" "\
Major mode for GHC Core files.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/ghci-script-mode" "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "88ca63573fc26aea310d7d28a34395d0")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el

(autoload 'ghci-script-mode "haskell-mode/ghci-script-mode" "\
Major mode for working with .ghci files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.ghci\\'" . ghci-script-mode))

;;;***

;;;### (autoloads nil "haskell-mode/haskell" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "067434c9e67d5738cb0013fa7f6fc843")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell.el

(autoload 'interactive-haskell-mode "haskell-mode/haskell" "\
Minor mode for enabling haskell-process interaction.

\(fn &optional ARG)" t nil)

(autoload 'haskell-interactive-mode-return "haskell-mode/haskell" "\
Handle the return key.

\(fn)" t nil)

(autoload 'haskell-session-kill "haskell-mode/haskell" "\
Kill the session process and buffer, delete the session.
0. Prompt to kill all associated buffers.
1. Kill the process.
2. Kill the interactive buffer unless LEAVE-INTERACTIVE-BUFFER is not given.
3. Walk through all the related buffers and set their haskell-session to nil.
4. Remove the session from the sessions list.

\(fn &optional LEAVE-INTERACTIVE-BUFFER)" t nil)

(autoload 'haskell-interactive-kill "haskell-mode/haskell" "\
Kill the buffer and (maybe) the session.

\(fn)" t nil)

(autoload 'haskell-session "haskell-mode/haskell" "\
Get the Haskell session, prompt if there isn't one or fail.

\(fn)" nil nil)

(autoload 'haskell-interactive-switch "haskell-mode/haskell" "\
Switch to the interactive mode for this session.

\(fn)" t nil)

(autoload 'haskell-session-change "haskell-mode/haskell" "\
Change the session for the current buffer.

\(fn)" t nil)

(autoload 'haskell-kill-session-process "haskell-mode/haskell" "\
Kill the process.

\(fn &optional SESSION)" t nil)

(autoload 'haskell-interactive-mode-visit-error "haskell-mode/haskell" "\
Visit the buffer of the current (or last) error message.

\(fn)" t nil)

(autoload 'haskell-mode-jump-to-tag "haskell-mode/haskell" "\
Jump to the tag of the given identifier.

Give optional NEXT-P parameter to override value of
`xref-prompt-for-identifier' during definition search.

\(fn &optional NEXT-P)" t nil)

(autoload 'haskell-mode-after-save-handler "haskell-mode/haskell" "\
Function that will be called after buffer's saving.

\(fn)" nil nil)

(autoload 'haskell-mode-tag-find "haskell-mode/haskell" "\
The tag find function, specific for the particular session.

\(fn &optional NEXT-P)" t nil)

(autoload 'haskell-interactive-bring "haskell-mode/haskell" "\
Bring up the interactive mode for this session.

\(fn)" t nil)

(autoload 'haskell-process-load-file "haskell-mode/haskell" "\
Load the current buffer file.

\(fn)" t nil)

(autoload 'haskell-process-reload "haskell-mode/haskell" "\
Re-load the current buffer file.

\(fn)" t nil)

(autoload 'haskell-process-reload-file "haskell-mode/haskell" "\


\(fn)" nil nil)

(autoload 'haskell-process-load-or-reload "haskell-mode/haskell" "\
Load or reload. Universal argument toggles which.

\(fn &optional TOGGLE)" t nil)

(autoload 'haskell-process-cabal-build "haskell-mode/haskell" "\
Build the Cabal project.

\(fn)" t nil)

(autoload 'haskell-process-cabal "haskell-mode/haskell" "\
Prompts for a Cabal command to run.

\(fn P)" t nil)

(autoload 'haskell-process-minimal-imports "haskell-mode/haskell" "\
Dump minimal imports.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-align-imports" "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "41ea3dd92f1894369eca73112986e85b")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el

(autoload 'haskell-align-imports "haskell-mode/haskell-align-imports" "\
Align all the imports in the buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-c2hs" "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "7b5a3da21c2a5970b9cef4668338dc2f")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el

(add-to-list 'auto-mode-alist '("\\.chs\\'" . haskell-c2hs-mode))

(autoload 'haskell-c2hs-mode "haskell-mode/haskell-c2hs" "\
Mode for editing *.chs files of the c2hs haskell tool.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-cabal" "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "5c8c6cb9819a531f7c7e25e91aa0de21")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el

(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

(autoload 'haskell-cabal-mode "haskell-mode/haskell-cabal" "\
Major mode for Cabal package description files.

\(fn)" t nil)

(autoload 'haskell-cabal-get-field "haskell-mode/haskell-cabal" "\
Read the value of field with NAME from project's cabal file.
If there is no valid .cabal file to get the setting from (or
there is no corresponding setting with that name in the .cabal
file), then this function returns nil.

\(fn NAME)" t nil)

(autoload 'haskell-cabal-get-dir "haskell-mode/haskell-cabal" "\
Get the Cabal dir for a new project. Various ways of figuring this out,
   and indeed just prompting the user. Do them all.

\(fn &optional USE-DEFAULTS)" nil nil)

(autoload 'haskell-cabal-visit-file "haskell-mode/haskell-cabal" "\
Locate and visit package description file for file visited by current buffer.
This uses `haskell-cabal-find-file' to locate the closest
\".cabal\" file and open it.  This command assumes a common Cabal
project structure where the \".cabal\" file is in the top-folder
of the project, and all files related to the project are in or
below the top-folder.  If called with non-nil prefix argument
OTHER-WINDOW use `find-file-other-window'.

\(fn OTHER-WINDOW)" t nil)

(let ((loads (get 'haskell-cabal 'custom-loads))) (if (member '"haskell-mode/haskell-cabal" loads) nil (put 'haskell-cabal 'custom-loads (cons '"haskell-mode/haskell-cabal" loads))))

;;;***

;;;### (autoloads nil "haskell-mode/haskell-collapse" "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "dd16002465531f2f1031d4666a8df9d0")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el

(autoload 'haskell-collapse-mode "haskell-mode/haskell-collapse" "\
Minor mode to collapse and expand haskell expressions

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-commands" "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "e9da6c0e47b3eb1e05dea7de33468f4b")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el

(autoload 'haskell-process-restart "haskell-mode/haskell-commands" "\
Restart the inferior Haskell process.

\(fn)" t nil)

(autoload 'haskell-process-clear "haskell-mode/haskell-commands" "\
Clear the current process.

\(fn)" t nil)

(autoload 'haskell-process-interrupt "haskell-mode/haskell-commands" "\
Interrupt the process (SIGINT).

\(fn)" t nil)

(autoload 'haskell-describe "haskell-mode/haskell-commands" "\
Describe the given identifier IDENT.

\(fn IDENT)" t nil)

(autoload 'haskell-rgrep "haskell-mode/haskell-commands" "\
Grep the effective project for the symbol at point.
Very useful for codebase navigation.

Prompts for an arbitrary regexp given a prefix arg PROMPT.

\(fn &optional PROMPT)" t nil)

(autoload 'haskell-process-do-info "haskell-mode/haskell-commands" "\
Print info on the identifier at point.
If PROMPT-VALUE is non-nil, request identifier via mini-buffer.

\(fn &optional PROMPT-VALUE)" t nil)

(autoload 'haskell-process-do-type "haskell-mode/haskell-commands" "\
Print the type of the given expression.

Given INSERT-VALUE prefix indicates that result type signature
should be inserted.

\(fn &optional INSERT-VALUE)" t nil)

(autoload 'haskell-mode-jump-to-def-or-tag "haskell-mode/haskell-commands" "\
Jump to the definition.
Jump to definition of identifier at point by consulting GHCi, or
tag table as fallback.

Remember: If GHCi is busy doing something, this will delay, but
it will always be accurate, in contrast to tags, which always
work but are not always accurate.
If the definition or tag is found, the location from which you jumped
will be pushed onto `xref--marker-ring', so you can return to that
position with `xref-pop-marker-stack'.

\(fn &optional NEXT-P)" t nil)

(autoload 'haskell-mode-goto-loc "haskell-mode/haskell-commands" "\
Go to the location of the thing at point.
Requires the :loc-at command from GHCi.

\(fn)" t nil)

(autoload 'haskell-mode-jump-to-def "haskell-mode/haskell-commands" "\
Jump to definition of identifier IDENT at point.

\(fn IDENT)" t nil)

(autoload 'haskell-process-cd "haskell-mode/haskell-commands" "\
Change directory.

\(fn &optional NOT-INTERACTIVE)" t nil)

(autoload 'haskell-process-cabal-macros "haskell-mode/haskell-commands" "\
Send the cabal macros string.

\(fn)" t nil)

(autoload 'haskell-mode-show-type-at "haskell-mode/haskell-commands" "\
Show type of the thing at point or within active region asynchronously.
This function requires GHCi 8+ or GHCi-ng.

\\<haskell-interactive-mode-map>
To make this function works sometimes you need to load the file in REPL
first using command `haskell-process-load-file' bound to
\\[haskell-process-load-file].

Optional argument INSERT-VALUE indicates that
recieved type signature should be inserted (but only if nothing
happened since function invocation).

\(fn &optional INSERT-VALUE)" t nil)

(autoload 'haskell-process-unignore "haskell-mode/haskell-commands" "\
Unignore any ignored files.
Do not ignore files that were specified as being ignored by the
inferior GHCi process.

\(fn)" t nil)

(autoload 'haskell-session-change-target "haskell-mode/haskell-commands" "\
Set the build TARGET for cabal REPL.

\(fn TARGET)" t nil)

(autoload 'haskell-mode-stylish-buffer "haskell-mode/haskell-commands" "\
Apply stylish-haskell to the current buffer.

Use `haskell-mode-stylish-haskell-path' to know where to find
stylish-haskell executable. This function tries to preserve
cursor position and markers by using
`haskell-mode-buffer-apply-command'.

\(fn)" t nil)

(autoload 'haskell-mode-find-uses "haskell-mode/haskell-commands" "\
Find use cases of the identifier at point and highlight them all.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-compile" "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "fffc3fa91f12bed7fadfe7f560380594")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el

(let ((loads (get 'haskell-compile 'custom-loads))) (if (member '"haskell-mode/haskell-compile" loads) nil (put 'haskell-compile 'custom-loads (cons '"haskell-mode/haskell-compile" loads))))

(autoload 'haskell-compile "haskell-mode/haskell-compile" "\
Compile the Haskell program including the current buffer.
Tries to locate the next cabal description in current or parent
folders via `haskell-cabal-find-dir' and if found, invoke
`haskell-compile-cabal-build-command' from the cabal package root
folder. If no cabal package could be detected,
`haskell-compile-command' is used instead.

If prefix argument EDIT-COMMAND is non-nil (and not a negative
prefix `-'), `haskell-compile' prompts for custom compile
command.

If EDIT-COMMAND contains the negative prefix argument `-',
`haskell-compile' calls the alternative command defined in
`haskell-compile-cabal-build-alt-command' if a cabal package was
detected.

`haskell-compile' uses `haskell-compilation-mode' which is
derived from `compilation-mode'. See Info
node `(haskell-mode)compilation' for more details.

\(fn &optional EDIT-COMMAND)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-completions" "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "99a3cd5ade303a00d12a0f7314b72c96")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el

(let ((loads (get 'haskell-completions 'custom-loads))) (if (member '"haskell-mode/haskell-completions" loads) nil (put 'haskell-completions 'custom-loads (cons '"haskell-mode/haskell-completions" loads))))

(autoload 'haskell-completions-completion-at-point "haskell-mode/haskell-completions" "\
Provide completion list for thing at point.
This function is used in non-interactive `haskell-mode'.  It
provides completions for haskell keywords, language pragmas,
GHC's options, and language extensions, but not identifiers.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-customize" "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "68160494e7cdac85d667b9aa98f985e4")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el

(let ((loads (get 'haskell 'custom-loads))) (if (member '"haskell-mode/haskell-customize" loads) nil (put 'haskell 'custom-loads (cons '"haskell-mode/haskell-customize" loads))))

(let ((loads (get 'haskell-interactive 'custom-loads))) (if (member '"haskell-mode/haskell-customize" loads) nil (put 'haskell-interactive 'custom-loads (cons '"haskell-mode/haskell-customize" loads))))

;;;***

;;;### (autoloads nil "haskell-mode/haskell-debug" "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "5e7e2a82e90df86e3bf5a9bf79e197b3")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el

(let ((loads (get 'haskell-debug 'custom-loads))) (if (member '"haskell-mode/haskell-debug" loads) nil (put 'haskell-debug 'custom-loads (cons '"haskell-mode/haskell-debug" loads))))

(defface haskell-debug-warning-face '((t :inherit 'compilation-warning)) "\
Face for warnings." :group (quote haskell-debug))

(defface haskell-debug-trace-number-face '((t :weight bold :background "#f5f5f5")) "\
Face for numbers in backtrace." :group (quote haskell-debug))

(defface haskell-debug-newline-face '((t :weight bold :background "#f0f0f0")) "\
Face for newlines in trace steps." :group (quote haskell-debug))

(defface haskell-debug-keybinding-face '((t :inherit 'font-lock-type-face :weight bold)) "\
Face for keybindings." :group (quote haskell-debug))

(defface haskell-debug-heading-face '((t :inherit 'font-lock-keyword-face)) "\
Face for headings." :group (quote haskell-debug))

(defface haskell-debug-muted-face '((t :foreground "#999")) "\
Face for muteds." :group (quote haskell-debug))

;;;***

;;;### (autoloads nil "haskell-mode/haskell-decl-scan" "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "27d2cd4b03954c149b0b886e4eed797b")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el

(let ((loads (get 'haskell-decl-scan 'custom-loads))) (if (member '"haskell-mode/haskell-decl-scan" loads) nil (put 'haskell-decl-scan 'custom-loads (cons '"haskell-mode/haskell-decl-scan" loads))))

(autoload 'haskell-ds-create-imenu-index "haskell-mode/haskell-decl-scan" "\
Function for finding `imenu' declarations in Haskell mode.
Finds all declarations (classes, variables, imports, instances and
datatypes) in a Haskell file for the `imenu' package.

\(fn)" nil nil)

(autoload 'turn-on-haskell-decl-scan "haskell-mode/haskell-decl-scan" "\
Unconditionally activate `haskell-decl-scan-mode'.

\(fn)" t nil)

(autoload 'haskell-decl-scan-mode "haskell-mode/haskell-decl-scan" "\
Toggle Haskell declaration scanning minor mode on or off.
With a prefix argument ARG, enable minor mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.

See also info node `(haskell-mode)haskell-decl-scan-mode' for
more details about this minor mode.

Top-level declarations are scanned and listed in the menu item
\"Declarations\" (if enabled via option
`haskell-decl-scan-add-to-menubar').  Selecting an item from this
menu will take point to the start of the declaration.

\\[beginning-of-defun] and \\[end-of-defun] move forward and backward to the start of a declaration.

This may link with `haskell-doc-mode'.

For non-literate and LaTeX-style literate scripts, we assume the
common convention that top-level declarations start at the first
column.  For Bird-style literate scripts, we assume the common
convention that top-level declarations start at the third column,
ie. after \"> \".

Anything in `font-lock-comment-face' is not considered for a
declaration.  Therefore, using Haskell font locking with comments
coloured in `font-lock-comment-face' improves declaration scanning.

Literate Haskell scripts are supported: If the value of
`haskell-literate' (set automatically by `literate-haskell-mode')
is `bird', a Bird-style literate script is assumed.  If it is nil
or `tex', a non-literate or LaTeX-style literate script is
assumed, respectively.

Invokes `haskell-decl-scan-mode-hook' on activation.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-doc" "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "e6e2c60ff2954bbbf0ddbf0afe859786")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el

(let ((loads (get 'haskell-doc 'custom-loads))) (if (member '"haskell-mode/haskell-doc" loads) nil (put 'haskell-doc 'custom-loads (cons '"haskell-mode/haskell-doc" loads))))

(autoload 'haskell-doc-mode "haskell-mode/haskell-doc" "\
Enter `haskell-doc-mode' for showing fct types in the echo area.
See variable docstring.

\(fn &optional ARG)" t nil)

(defalias 'turn-on-haskell-doc-mode 'haskell-doc-mode)

(defalias 'turn-on-haskell-doc 'haskell-doc-mode)

(autoload 'haskell-doc-current-info "haskell-mode/haskell-doc" "\
Return the info about symbol at point.
Meant for `eldoc-documentation-function'.

\(fn)" nil nil)

(autoload 'haskell-doc-show-type "haskell-mode/haskell-doc" "\
Show the type of the function near point or given symbol SYM.
For the function under point, show the type in the echo area.
This information is extracted from the `haskell-doc-prelude-types' alist
of prelude functions and their types, or from the local functions in the
current buffer.

\(fn &optional SYM)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-font-lock" "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "4884e29ec557b2c2a27c0a284b549855")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el

(let ((loads (get 'haskell-appearance 'custom-loads))) (if (member '"haskell-mode/haskell-font-lock" loads) nil (put 'haskell-appearance 'custom-loads (cons '"haskell-mode/haskell-font-lock" loads))))

(defface haskell-keyword-face '((t :inherit font-lock-keyword-face)) "\
Face used to highlight Haskell keywords." :group (quote haskell-appearance))

(defface haskell-type-face '((t :inherit font-lock-type-face)) "\
Face used to highlight Haskell types" :group (quote haskell-appearance))

(defface haskell-constructor-face '((t :inherit font-lock-type-face)) "\
Face used to highlight Haskell constructors." :group (quote haskell-appearance))

(defface haskell-operator-face '((t :inherit font-lock-variable-name-face)) "\
Face used to highlight Haskell operators." :group (quote haskell-appearance))

(defface haskell-pragma-face '((t :inherit font-lock-preprocessor-face)) "\
Face used to highlight Haskell pragmas ({-# ... #-})." :group (quote haskell-appearance))

(defface haskell-liquid-haskell-annotation-face '((t :inherit haskell-pragma-face)) "\
Face used to highlight LiquidHaskell annotations ({-@ ... @-})." :group (quote haskell-appearance))

(defface haskell-literate-comment-face '((t :inherit font-lock-doc-face)) "\
Face with which to fontify literate comments.
Inherit from `default' to avoid fontification of them." :group (quote haskell-appearance))

;;;***

;;;### (autoloads nil "haskell-mode/haskell-hoogle" "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "842b2f03fa41bcc9c70689b3aa97a7e3")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el

(autoload 'haskell-hoogle "haskell-mode/haskell-hoogle" "\
Do a Hoogle search for QUERY.
When `haskell-hoogle-command' is non-nil, this command runs
that.  Otherwise, it opens a hoogle search result in the browser.

If prefix argument INFO is given, then `haskell-hoogle-command'
is asked to show extra info for the items matching QUERY..

\(fn QUERY &optional INFO)" t nil)

(defalias 'hoogle 'haskell-hoogle)

(autoload 'haskell-hoogle-lookup-from-local "haskell-mode/haskell-hoogle" "\
Lookup by local hoogle.

\(fn)" t nil)

(autoload 'haskell-hayoo "haskell-mode/haskell-hoogle" "\
Do a Hayoo search for QUERY.

\(fn QUERY)" t nil)

(defalias 'hayoo 'haskell-hayoo)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-indent" "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "b94deff287958ec9ea4daed232bdd6a7")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el

(let ((loads (get 'haskell-indent 'custom-loads))) (if (member '"haskell-mode/haskell-indent" loads) nil (put 'haskell-indent 'custom-loads (cons '"haskell-mode/haskell-indent" loads))))

(autoload 'turn-on-haskell-indent "haskell-mode/haskell-indent" "\
Turn on ``intelligent'' Haskell indentation mode.

\(fn)" nil nil)

(autoload 'haskell-indent-mode "haskell-mode/haskell-indent" "\
``Intelligent'' Haskell indentation mode.
This deals with the layout rule of Haskell.
\\[haskell-indent-cycle] starts the cycle which proposes new
possibilities as long as the TAB key is pressed.  Any other key
or mouse click terminates the cycle and is interpreted except for
RET which merely exits the cycle.
Other special keys are:
    \\[haskell-indent-insert-equal]
      inserts an =
    \\[haskell-indent-insert-guard]
      inserts an |
    \\[haskell-indent-insert-otherwise]
      inserts an | otherwise =
these functions also align the guards and rhs of the current definition
    \\[haskell-indent-insert-where]
      inserts a where keyword
    \\[haskell-indent-align-guards-and-rhs]
      aligns the guards and rhs of the region
    \\[haskell-indent-put-region-in-literate]
      makes the region a piece of literate code in a literate script

If `ARG' is falsey, toggle `haskell-indent-mode'.  Else sets
`haskell-indent-mode' to whether `ARG' is greater than 0.

Invokes `haskell-indent-hook' if not nil.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-indentation" "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "a35b903a73be0f7c8dbb9daa2cebc07d")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el

(let ((loads (get 'haskell-indentation 'custom-loads))) (if (member '"haskell-mode/haskell-indentation" loads) nil (put 'haskell-indentation 'custom-loads (cons '"haskell-mode/haskell-indentation" loads))))

(autoload 'haskell-indentation-mode "haskell-mode/haskell-indentation" "\
Haskell indentation mode that deals with the layout rule.
It rebinds RET, DEL and BACKSPACE, so that indentations can be
set and deleted as if they were real tabs.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-haskell-indentation "haskell-mode/haskell-indentation" "\
Turn on the haskell-indentation minor mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-interactive-mode" "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "89b680e837e5af7a8689e245ff8dec3e")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el

(defface haskell-interactive-face-prompt '((t :inherit font-lock-function-name-face)) "\
Face for the prompt." :group (quote haskell-interactive))

(defface haskell-interactive-face-prompt2 '((t :inherit font-lock-keyword-face)) "\
Face for the prompt2 in multi-line mode." :group (quote haskell-interactive))

(defface haskell-interactive-face-compile-error '((t :inherit compilation-error)) "\
Face for compile errors." :group (quote haskell-interactive))

(defface haskell-interactive-face-compile-warning '((t :inherit compilation-warning)) "\
Face for compiler warnings." :group (quote haskell-interactive))

(defface haskell-interactive-face-result '((t :inherit font-lock-string-face)) "\
Face for the result." :group (quote haskell-interactive))

(defface haskell-interactive-face-garbage '((t :inherit font-lock-string-face)) "\
Face for trailing garbage after a command has completed." :group (quote haskell-interactive))

(autoload 'haskell-interactive-mode-reset-error "haskell-mode/haskell-interactive-mode" "\
Reset the error cursor position.

\(fn SESSION)" t nil)

(autoload 'haskell-interactive-mode-echo "haskell-mode/haskell-interactive-mode" "\
Echo a read only piece of text before the prompt.

\(fn SESSION MESSAGE &optional MODE)" nil nil)

(autoload 'haskell-process-show-repl-response "haskell-mode/haskell-interactive-mode" "\
Send LINE to the GHCi process and echo the result in some fashion.
Result will be printed in the minibuffer or presented using
function `haskell-presentation-present', depending on variable
`haskell-process-use-presentation-mode'.

\(fn LINE)" nil nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-load" "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "36f9a8f7163b5de195cfe1a6e752e81d")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-load.el

(defface haskell-error-face '((((supports :underline (:style wave))) :underline (:style wave :color "#dc322f")) (t :inherit error)) "\
Face used for marking error lines." :group (quote haskell-mode))

(defface haskell-warning-face '((((supports :underline (:style wave))) :underline (:style wave :color "#b58900")) (t :inherit warning)) "\
Face used for marking warning lines." :group (quote haskell-mode))

(defface haskell-hole-face '((((supports :underline (:style wave))) :underline (:style wave :color "#6c71c4")) (t :inherit warning)) "\
Face used for marking hole lines." :group (quote haskell-mode))

(autoload 'haskell-process-reload-devel-main "haskell-mode/haskell-load" "\
Reload the module `DevelMain' and then run `DevelMain.update'.

This is for doing live update of the code of servers or GUI
applications.  Put your development version of the program in
`DevelMain', and define `update' to auto-start the program on a
new thread, and use the `foreign-store' package to access the
running context across :load/:reloads in GHCi.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-menu" "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "67651925ac4864cd2fe92cc3bee301ea")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el

(autoload 'haskell-menu "haskell-mode/haskell-menu" "\
Launch the Haskell sessions menu.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-mode" "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "0cd5d7baa12a00384ab684ae22761f92")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el

(autoload 'haskell-version "haskell-mode/haskell-mode" "\
Show the `haskell-mode` version in the echo area.
With prefix argument HERE, insert it at point.

\(fn &optional HERE)" t nil)

(autoload 'haskell-mode-view-news "haskell-mode/haskell-mode" "\
Display information on recent changes to haskell-mode.

\(fn)" t nil)

(autoload 'haskell-mode "haskell-mode/haskell-mode" "\
Major mode for editing Haskell programs.

\\<haskell-mode-map>

Literate Haskell scripts are supported via `literate-haskell-mode'.
The variable `haskell-literate' indicates the style of the script in the
current buffer.  See the documentation on this variable for more details.

Use `haskell-version' to find out what version of Haskell mode you are
currently using.

Additional Haskell mode modules can be hooked in via `haskell-mode-hook'.

Indentation modes:

    `haskell-indentation-mode', Kristof Bastiaensen, Gergely Risko
      Intelligent semi-automatic indentation Mk2

    `haskell-indent-mode', Guy Lapalme
      Intelligent semi-automatic indentation.

Interaction modes:

    `interactive-haskell-mode'
      Interact with per-project GHCi processes through a REPL and
      directory-aware sessions.

    `inf-haskell-mode'
      Interact with a GHCi process using comint-mode. Deprecated.

Other modes:

    `haskell-decl-scan-mode', Graeme E Moss
      Scans top-level declarations, and places them in a menu.

    `haskell-doc-mode', Hans-Wolfgang Loidl
      Echoes types of functions or syntax of keywords when the cursor is idle.

To activate a minor-mode, simply run the interactive command. For
example, `M-x haskell-doc-mode'. Run it again to disable it.

To enable a mode for every haskell-mode buffer, add a hook in
your Emacs configuration. To do that you can customize
`haskell-mode-hook' or add lines to your .emacs file. For
example, to enable `interactive-haskell-mode', use the following:

    (add-hook 'haskell-mode-hook 'interactive-haskell-mode)

Minor modes that work well with `haskell-mode':

- `smerge-mode': show and work with diff3 conflict markers used
  by git, svn and other version control systems.

\(fn)" t nil)

(autoload 'haskell-forward-sexp "haskell-mode/haskell-mode" "\
Haskell specific version of `forward-sexp'.

Move forward across one balanced expression (sexp).  With ARG, do
it that many times.  Negative arg -N means move backward across N
balanced expressions.  This command assumes point is not in a
string or comment.

If unable to move over a sexp, signal `scan-error' with three
arguments: a message, the start of the obstacle (a parenthesis or
list marker of some kind), and end of the obstacle.

\(fn &optional ARG)" t nil)

(autoload 'literate-haskell-mode "haskell-mode/haskell-mode" "\
As `haskell-mode' but for literate scripts.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.[gh]s\\'" . haskell-mode))

(add-to-list 'auto-mode-alist '("\\.l[gh]s\\'" . literate-haskell-mode))

(add-to-list 'auto-mode-alist '("\\.hsc\\'" . haskell-mode))

(add-to-list 'interpreter-mode-alist '("runghc" . haskell-mode))

(add-to-list 'interpreter-mode-alist '("runhaskell" . haskell-mode))

(add-to-list 'completion-ignored-extensions ".hi")

(autoload 'haskell-mode-generate-tags "haskell-mode/haskell-mode" "\
Generate tags using Hasktags.  This is synchronous function.

If optional AND-THEN-FIND-THIS-TAG argument is present it is used
with function `xref-find-definitions' after new table was
generated.

\(fn &optional AND-THEN-FIND-THIS-TAG)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-modules" "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "63ddc21c2c3189347004c6b96b3dd370")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el

(autoload 'haskell-session-installed-modules "haskell-mode/haskell-modules" "\
Get the modules installed in the current package set.

\(fn SESSION &optional DONTCREATE)" nil nil)

(autoload 'haskell-session-all-modules "haskell-mode/haskell-modules" "\
Get all modules -- installed or in the current project.
If DONTCREATE is non-nil don't create a new session.

\(fn SESSION &optional DONTCREATE)" nil nil)

(autoload 'haskell-session-project-modules "haskell-mode/haskell-modules" "\
Get the modules of the current project.
If DONTCREATE is non-nil don't create a new session.

\(fn SESSION &optional DONTCREATE)" nil nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-move-nested" "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "9ec4ee2be8031978b7ddc195047aef02")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el

(autoload 'haskell-move-nested "haskell-mode/haskell-move-nested" "\
Shift the nested off-side-rule block adjacent to point by COLS columns to the right.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" nil nil)

(autoload 'haskell-move-nested-right "haskell-mode/haskell-move-nested" "\
Increase indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" t nil)

(autoload 'haskell-move-nested-left "haskell-mode/haskell-move-nested" "\
Decrease indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-navigate-imports" "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "d2cfa53512b764b2fe8c521bc13568ea")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el

(autoload 'haskell-navigate-imports "haskell-mode/haskell-navigate-imports" "\
Cycle the Haskell import lines or return to point (with prefix arg).

\(fn &optional RETURN)" t nil)

(autoload 'haskell-navigate-imports-go "haskell-mode/haskell-navigate-imports" "\
Go to the first line of a list of consecutive import lines. Cycles.

\(fn)" t nil)

(autoload 'haskell-navigate-imports-return "haskell-mode/haskell-navigate-imports" "\
Return to the non-import point we were at before going to the module list.
   If we were originally at an import list, we can just cycle through easily.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-session" "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "bbc262bc6d91a5c6a7298802b4ff9097")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-session.el

(autoload 'haskell-session-maybe "haskell-mode/haskell-session" "\
Maybe get the Haskell session, return nil if there isn't one.

\(fn)" nil nil)

(autoload 'haskell-session-process "haskell-mode/haskell-session" "\
Get the session process.

\(fn S)" nil nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-sort-imports" "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "20b46a912d2c2ed84b9add1e4bc3a7b7")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el

(autoload 'haskell-sort-imports "haskell-mode/haskell-sort-imports" "\
Sort the import list at point. It sorts the current group
i.e. an import list separated by blank lines on either side.

If the region is active, it will restrict the imports to sort
within that region.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/haskell-unicode-input-method"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "5a1c3cff53191554949331bb16c5be75")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el

(autoload 'turn-on-haskell-unicode-input-method "haskell-mode/haskell-unicode-input-method" "\
Set input method `haskell-unicode'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/highlight-uses-mode" "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "55334f1b8202e898a89d0be733b16421")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el

(autoload 'highlight-uses-mode "haskell-mode/highlight-uses-mode" "\
Minor mode for highlighting and jumping between uses.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/inf-haskell" "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "2473c5b532bf3f6c3444974a6bb5ee3f")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el

(let ((loads (get 'inferior-haskell 'custom-loads))) (if (member '"haskell-mode/inf-haskell" loads) nil (put 'inferior-haskell 'custom-loads (cons '"haskell-mode/inf-haskell" loads))))

(defalias 'run-haskell 'switch-to-haskell)

(autoload 'switch-to-haskell "haskell-mode/inf-haskell" "\
Show the inferior-haskell buffer.  Start the process if needed.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "haskell-mode/w3m-haddock" "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "bbc2bc102e680b5991d7d47073b71965")
;;; Generated autoloads from ../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el

(defface w3m-haddock-heading-face '((((class color)) :inherit highlight)) "\
Face for quarantines." :group (quote haskell))

;;;***

;;;### (autoloads nil "highlight-symbol/highlight-symbol" "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "ebc133fe3d407bca23ce462cc5db0b5a")
;;; Generated autoloads from ../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el

(autoload 'highlight-symbol-mode "highlight-symbol/highlight-symbol" "\
Minor mode that highlights the symbol under point throughout the buffer.
Highlighting takes place after `highlight-symbol-idle-delay'.

\(fn &optional ARG)" t nil)

(defalias 'highlight-symbol-at-point 'highlight-symbol)

(autoload 'highlight-symbol "highlight-symbol/highlight-symbol" "\
Toggle highlighting of the symbol at point.
This highlights or unhighlights the symbol at point using the first
element in of `highlight-symbol-faces'.

\(fn &optional SYMBOL)" t nil)

(autoload 'highlight-symbol-remove-all "highlight-symbol/highlight-symbol" "\
Remove symbol highlighting in buffer.

\(fn)" t nil)

(autoload 'highlight-symbol-list-all "highlight-symbol/highlight-symbol" "\
List all symbols highlighted in the buffer.

\(fn)" t nil)

(autoload 'highlight-symbol-count "highlight-symbol/highlight-symbol" "\
Print the number of occurrences of symbol at point.

\(fn &optional SYMBOL MESSAGE-P)" t nil)

(autoload 'highlight-symbol-next "highlight-symbol/highlight-symbol" "\
Jump to the next location of the symbol at point within the buffer.

\(fn)" t nil)

(autoload 'highlight-symbol-prev "highlight-symbol/highlight-symbol" "\
Jump to the previous location of the symbol at point within the buffer.

\(fn)" t nil)

(autoload 'highlight-symbol-next-in-defun "highlight-symbol/highlight-symbol" "\
Jump to the next location of the symbol at point within the defun.

\(fn)" t nil)

(autoload 'highlight-symbol-prev-in-defun "highlight-symbol/highlight-symbol" "\
Jump to the previous location of the symbol at point within the defun.

\(fn)" t nil)

(autoload 'highlight-symbol-nav-mode "highlight-symbol/highlight-symbol" "\
Navigate occurrences of the symbol at point.

When called interactively, toggle `highlight-symbol-nav-mode'.
With prefix ARG, enable `highlight-symbol-nav-mode' if ARG is
positive, otherwise disable it.

When called from Lisp, enable `highlight-symbol-nav-mode' if ARG
is omitted, nil or positive.  If ARG is `toggle', toggle
`highlight-symbol-nav-mode'.  Otherwise behave as if called
interactively.

In `highlight-symbol-nav-mode' provide the following key bindings
to navigate between occurrences of the symbol at point in the
current buffer.

\\{highlight-symbol-nav-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'highlight-symbol-query-replace "highlight-symbol/highlight-symbol" "\
Replace the symbol at point with REPLACEMENT.

\(fn REPLACEMENT)" t nil)

(autoload 'highlight-symbol-occur "highlight-symbol/highlight-symbol" "\
Call `occur' with the symbol at point.
Each line is displayed with NLINES lines before and after, or -NLINES
before if NLINES is negative.

\(fn &optional NLINES)" t nil)

;;;***

;;;### (autoloads nil "markdown-mode/markdown-mode" "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "3503ec59664aa12fc525a8058afc7232")
;;; Generated autoloads from ../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el

(autoload 'markdown-mode "markdown-mode/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode) t)

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode) t)

(autoload 'gfm-mode "markdown-mode/markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

(autoload 'markdown-view-mode "markdown-mode/markdown-mode" "\
Major mode for viewing Markdown content.

\(fn)" t nil)

(autoload 'gfm-view-mode "markdown-mode/markdown-mode" "\
Major mode for viewing GitHub Flavored Markdown content.

\(fn)" t nil)

(autoload 'markdown-live-preview-mode "markdown-mode/markdown-mode" "\
Toggle native previewing on save for a specific markdown file.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "powerline/powerline" "../../../../.emacs.d/el-get/powerline/powerline.el"
;;;;;;  "75301790a2fec4284d8ee734d73cca14")
;;; Generated autoloads from ../../../../.emacs.d/el-get/powerline/powerline.el

(autoload 'powerline-hud "powerline/powerline" "\
Return an XPM of relative buffer location using FACE1 and FACE2 of optional WIDTH.

\(fn FACE1 FACE2 &optional WIDTH)" nil nil)

(autoload 'powerline-mouse "powerline/powerline" "\
Return mouse handler for CLICK-GROUP given CLICK-TYPE and STRING.

\(fn CLICK-GROUP CLICK-TYPE STRING)" nil nil)

(autoload 'powerline-concat "powerline/powerline" "\
Concatonate STRINGS and pad sides by spaces.

\(fn &rest STRINGS)" nil nil)

(autoload 'defpowerline "powerline/powerline" "\
Create function NAME by wrapping BODY with powerline padding an propetization.

\(fn NAME BODY)" nil t)

(autoload 'powerline-raw "powerline/powerline" "\
Render STR as mode-line data using FACE and optionally PAD import on left (l) or right (r).

\(fn STR &optional FACE PAD)" nil nil)

(autoload 'powerline-fill "powerline/powerline" "\
Return empty space using FACE and leaving RESERVE space on the right.

\(fn FACE RESERVE)" nil nil)
 (autoload 'powerline-major-mode "powerline")
 (autoload 'powerline-minor-modes "powerline")
 (autoload 'powerline-narrow "powerline")
 (autoload 'powerline-vc "powerline")
 (autoload 'powerline-encoding "powerline")
 (autoload 'powerline-buffer-size "powerline")
 (autoload 'powerline-buffer-id "powerline")
 (autoload 'powerline-process "powerline")
 (autoload 'powerline-selected-window-active "powerline")

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/el-get/auto-complete/auto-complete-config.el"
;;;;;;  "../../../../.emacs.d/el-get/auto-complete/auto-complete.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/git-gutter/git-gutter.el" "../../../../.emacs.d/el-get/git-gutter/git-gutter.el"
;;;;;;  "../../../../.emacs.d/el-get/go-mode/go-guru.el" "../../../../.emacs.d/el-get/go-mode/go-guru.el"
;;;;;;  "../../../../.emacs.d/el-get/go-mode/go-mode.el" "../../../../.emacs.d/el-get/go-mode/go-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/go-mode/go-rename.el" "../../../../.emacs.d/el-get/go-mode/go-rename.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline.el" "../../../../.emacs.d/el-get/powerline/powerline.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/uuidgen/uuidgen.el" "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-bundle.el" "el-get/el-get-check.el"
;;;;;;  "el-get/el-get-check.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get.el" "el-get/el-get.el")
;;;;;;  (23190 58268 829309 976000))

;;;***

;;;### (autoloads nil "powerline/powerline-themes" "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "6661618a14c40766305a6ca50d5d2f31")
;;; Generated autoloads from ../../../../.emacs.d/el-get/powerline/powerline-themes.el

(autoload 'powerline-default-theme "powerline/powerline-themes" "\
Setup the default mode-line.

\(fn)" t nil)

(autoload 'powerline-center-theme "powerline/powerline-themes" "\
Setup a mode-line with major and minor modes centered.

\(fn)" t nil)

(autoload 'powerline-vim-theme "powerline/powerline-themes" "\
Setup a Vim-like mode-line.

\(fn)" t nil)

(autoload 'powerline-nano-theme "powerline/powerline-themes" "\
Setup a nano-like mode-line.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/el-get/auto-complete/auto-complete-config.el"
;;;;;;  "../../../../.emacs.d/el-get/auto-complete/auto-complete.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-autoloading.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-build.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-byte-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-core.el" "../../../../.emacs.d/el-get/el-get/el-get-custom.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-dependencies.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-install.el" "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-methods.el" "../../../../.emacs.d/el-get/el-get/el-get-notify.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-recipes.el" "../../../../.emacs.d/el-get/el-get/el-get-status.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/git-gutter/git-gutter.el" "../../../../.emacs.d/el-get/git-gutter/git-gutter.el"
;;;;;;  "../../../../.emacs.d/el-get/go-mode/go-guru.el" "../../../../.emacs.d/el-get/go-mode/go-guru.el"
;;;;;;  "../../../../.emacs.d/el-get/go-mode/go-mode.el" "../../../../.emacs.d/el-get/go-mode/go-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/go-mode/go-rename.el" "../../../../.emacs.d/el-get/go-mode/go-rename.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compat.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-complete-module.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-ghc-support.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-lexeme.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode-autoloads.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode-pkg.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-presentation-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-process.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-repl.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sandbox.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-string.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-utils.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline.el" "../../../../.emacs.d/el-get/powerline/powerline.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/uuidgen/uuidgen.el" "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode-test.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/web-server/web-server-status-codes.el"
;;;;;;  "../../../../.emacs.d/el-get/web-server/web-server-test.el"
;;;;;;  "../../../../.emacs.d/el-get/web-server/web-server.el" "el-get/el-get-bundle.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-bundle.el" "el-get/el-get-bundle.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-bundle.el" "el-get/el-get-bundle.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-bundle.el" "el-get/el-get-bundle.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-bundle.el" "el-get/el-get-bundle.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-bundle.el" "el-get/el-get-bundle.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-bundle.el" "el-get/el-get-bundle.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-check.el" "el-get/el-get-check.el"
;;;;;;  "el-get/el-get-check.el" "el-get/el-get-check.el" "el-get/el-get-check.el"
;;;;;;  "el-get/el-get-check.el" "el-get/el-get-check.el" "el-get/el-get-check.el"
;;;;;;  "el-get/el-get-check.el" "el-get/el-get-check.el" "el-get/el-get-check.el"
;;;;;;  "el-get/el-get-check.el" "el-get/el-get-check.el" "el-get/el-get-check.el"
;;;;;;  "el-get/el-get-check.el" "el-get/el-get-check.el" "el-get/el-get-check.el"
;;;;;;  "el-get/el-get-check.el" "el-get/el-get-check.el" "el-get/el-get-check.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get.el" "el-get/el-get.el" "el-get/el-get.el"
;;;;;;  "el-get/el-get.el" "el-get/el-get.el" "el-get/el-get.el"
;;;;;;  "el-get/el-get.el" "el-get/el-get.el" "el-get/el-get.el"
;;;;;;  "el-get/el-get.el" "el-get/el-get.el" "el-get/el-get.el"
;;;;;;  "el-get/el-get.el" "el-get/el-get.el" "el-get/el-get.el"
;;;;;;  "el-get/el-get.el" "el-get/el-get.el" "el-get/el-get.el"
;;;;;;  "el-get/el-get.el" "el-get/el-get.el") (23190 58272 605476
;;;;;;  663000))

;;;***

;;;### (autoloads nil "systemd-mode/systemd" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "8288a4b5975b453aa35d672175727bc2")
;;; Generated autoloads from ../../../../.emacs.d/el-get/systemd-mode/systemd.el

(defconst systemd-autoload-regexp (eval-when-compile (rx (+\? (any "a-zA-Z0-9-_.@\\")) "." (or "automount" "busname" "mount" "service" "slice" "socket" "swap" "target" "timer" "link" "netdev" "network") string-end)) "\
Regexp for file buffers in which to autoload `systemd-mode'.")

(defconst systemd-tempfn-autoload-regexp (eval-when-compile (rx ".#" (or (and (+\? (any "a-zA-Z0-9-_.@\\")) "." (or "automount" "busname" "mount" "service" "slice" "socket" "swap" "target" "timer" "link" "netdev" "network")) "override.conf") (= 16 (char hex-digit)) string-end)) "\
Regexp for temp file buffers in which to autoload `systemd-mode'.")

(defconst systemd-dropin-autoload-regexp (eval-when-compile (rx "/systemd/" (+\? anything) ".d/" (+\? (not (any 47))) ".conf" string-end)) "\
Regexp for dropin config file buffers in which to autoload `systemd-mode'.")
 (add-to-list 'auto-mode-alist '("\\.nspawn\\'" . systemd-mode))
 (add-to-list 'auto-mode-alist `(,systemd-autoload-regexp . systemd-mode))
 (add-to-list 'auto-mode-alist `(,systemd-tempfn-autoload-regexp . systemd-mode))
 (add-to-list 'auto-mode-alist `(,systemd-dropin-autoload-regexp . systemd-mode))

(autoload 'systemd-mode "systemd-mode/systemd" "\
Major mode for editing systemd unit files.
See http://www.freedesktop.org/wiki/Software/systemd/ for more
information about systemd.

In addition to any hooks its parent mode might have run, this
mode runs the hook `systemd-mode-hook' at mode initialization.

Key bindings:
\\{systemd-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/el-get/auto-complete/auto-complete-config.el"
;;;;;;  "../../../../.emacs.d/el-get/auto-complete/auto-complete-config.el"
;;;;;;  "../../../../.emacs.d/el-get/auto-complete/auto-complete-config.el"
;;;;;;  "../../../../.emacs.d/el-get/auto-complete/auto-complete-pkg.el"
;;;;;;  "../../../../.emacs.d/el-get/auto-complete/auto-complete.el"
;;;;;;  "../../../../.emacs.d/el-get/auto-complete/auto-complete.el"
;;;;;;  "../../../../.emacs.d/el-get/auto-complete/auto-complete.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/git-gutter/git-gutter.el" "../../../../.emacs.d/el-get/git-gutter/git-gutter.el"
;;;;;;  "../../../../.emacs.d/el-get/git-gutter/git-gutter.el" "../../../../.emacs.d/el-get/git-gutter/git-gutter.el"
;;;;;;  "../../../../.emacs.d/el-get/git-gutter/git-gutter.el" "../../../../.emacs.d/el-get/go-mode/go-guru.el"
;;;;;;  "../../../../.emacs.d/el-get/go-mode/go-mode.el" "../../../../.emacs.d/el-get/go-mode/go-rename.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/popup/popup.el" "../../../../.emacs.d/el-get/powerline/powerline-separators.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline.el" "../../../../.emacs.d/el-get/powerline/powerline.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline.el" "../../../../.emacs.d/el-get/powerline/powerline.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline.el" "../../../../.emacs.d/el-get/powerline/powerline.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-bundle.el" "el-get/el-get-bundle.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-bundle.el" "el-get/el-get-bundle.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-bundle.el" "el-get/el-get-bundle.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-check.el" "el-get/el-get-check.el"
;;;;;;  "el-get/el-get-check.el" "el-get/el-get-check.el" "el-get/el-get-check.el"
;;;;;;  "el-get/el-get-check.el" "el-get/el-get-check.el" "el-get/el-get-check.el"
;;;;;;  "el-get/el-get-check.el" "el-get/el-get-check.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get.el" "el-get/el-get.el"
;;;;;;  "el-get/el-get.el" "el-get/el-get.el" "el-get/el-get.el"
;;;;;;  "el-get/el-get.el" "el-get/el-get.el" "el-get/el-get.el"
;;;;;;  "el-get/el-get.el" "el-get/el-get.el") (23190 58277 721702
;;;;;;  503000))

;;;***

;;;### (autoloads nil "wakatime-mode/wakatime-mode" "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "8fda72801357b5e5ee0095ca1a058e4b")
;;; Generated autoloads from ../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el

(autoload 'wakatime-mode "wakatime-mode/wakatime-mode" "\
Toggle WakaTime (WakaTime mode).

\(fn &optional ARG)" t nil)

(defvar global-wakatime-mode nil "\
Non-nil if Global Wakatime mode is enabled.
See the `global-wakatime-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-wakatime-mode'.")

(custom-autoload 'global-wakatime-mode "wakatime-mode/wakatime-mode" nil)

(autoload 'global-wakatime-mode "wakatime-mode/wakatime-mode" "\
Toggle Wakatime mode in all buffers.
With prefix ARG, enable Global Wakatime mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Wakatime mode is enabled in all buffers where
`(lambda nil (wakatime-mode 1))' would do it.
See `wakatime-mode' for more information on Wakatime mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/el-get/auto-complete/auto-complete-config.el"
;;;;;;  "../../../../.emacs.d/el-get/auto-complete/auto-complete-config.el"
;;;;;;  "../../../../.emacs.d/el-get/auto-complete/auto-complete.el"
;;;;;;  "../../../../.emacs.d/el-get/auto-complete/auto-complete.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-bundle.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-bundle.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-check.el" "../../../../.emacs.d/el-get/el-get/el-get-check.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "../../../../.emacs.d/el-get/el-get/el-get.el" "../../../../.emacs.d/el-get/flyspell/flyspell-1.7q.el"
;;;;;;  "../../../../.emacs.d/el-get/git-gutter/git-gutter.el" "../../../../.emacs.d/el-get/git-gutter/git-gutter.el"
;;;;;;  "../../../../.emacs.d/el-get/git-gutter/git-gutter.el" "../../../../.emacs.d/el-get/go-mode/go-guru.el"
;;;;;;  "../../../../.emacs.d/el-get/go-mode/go-mode.el" "../../../../.emacs.d/el-get/go-mode/go-rename.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghc-core.el" "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/ghci-script-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-align-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-c2hs.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-cabal.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-collapse.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-commands.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-compile.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-completions.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-customize.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-debug.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-decl-scan.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-doc.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-font-lock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-hoogle.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indent.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-indentation.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-interactive-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-load.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-menu.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-modules.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-move-nested.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-navigate-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-session.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-sort-imports.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell-unicode-input-method.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/haskell.el" "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/highlight-uses-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/inf-haskell.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/haskell-mode/w3m-haddock.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/highlight-symbol/highlight-symbol.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/markdown-mode/markdown-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline-themes.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline.el" "../../../../.emacs.d/el-get/powerline/powerline.el"
;;;;;;  "../../../../.emacs.d/el-get/powerline/powerline.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/systemd-mode/systemd.el" "../../../../.emacs.d/el-get/systemd-mode/systemd.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "../../../../.emacs.d/el-get/wakatime-mode/wakatime-mode.el"
;;;;;;  "el-get/el-get-bundle.el" "el-get/el-get-bundle.el" "el-get/el-get-bundle.el"
;;;;;;  "el-get/el-get-check.el" "el-get/el-get-check.el" "el-get/el-get-check.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get-list-packages.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get.el" "el-get/el-get.el"
;;;;;;  "el-get/el-get.el") (23253 64886 568519 126000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
