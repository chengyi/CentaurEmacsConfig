;;; citre-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "citre" "citre.el" (0 0 0 0))
;;; Generated autoloads from citre.el

(put 'citre-enable-xref-integration 'safe-local-variable #'booleanp)

(put 'citre-enable-capf-integration 'safe-local-variable #'booleanp)

(put 'citre-enable-imenu-integration 'safe-local-variable #'booleanp)

(autoload 'citre-jump "citre" "\
Jump to the definition of the symbol at point.
When there's multiple definitions, it lets you pick one using the
`completing-read' UI, or you could use your own UI by customizing
`citre-select-definition-function'." t nil)

(autoload 'citre-jump-to-reference "citre" "\
Jump to the definition of the symbol at point.
When there's multiple definitions, it lets you pick one using the
`completing-read' UI, or you could use your own UI by customizing
`citre-select-definition-function'." t nil)

(autoload 'citre-peek "citre" "\
Peek the definition of symbol at pointthe symbol in BUF at POINT.
Or, When BUF or POINT is non-nil, peek the symbol at POINT (or
current point) in BUF (or the current buffer).

When REFERENCE is non-nil, peek the references.

\(fn &optional BUF POINT REFERENCE)" t nil)

(autoload 'citre-ace-peek "citre" "\
Peek the definition of a symbol on screen using ace jump.
Press a key in `citre-peek-ace-pick-symbol-at-point-keys' to pick
the symbol under point.

This command is useful when you want to see the definition of a
function while filling its arglist.  When REFERENCE is non-nil,
peek the references.

\(fn &optional REFERENCE)" t nil)

(autoload 'citre-peek-through "citre" "\
Peek through a symbol in current peek window.
If REFERENCE is non-nil, peek its references, otherwise peek its
definitions.

\(fn &optional REFERENCE)" t nil)

(autoload 'citre-peek-reference "citre" "\
Peek the definitions of the symbol at point." t nil)

(autoload 'citre-ace-peek-reference "citre" "\
Peek the references of a symbol on screen using ace jump." t nil)

(autoload 'citre-peek-through-reference "citre" "\
Peek through a symbol in current peek window for references." t nil)

(autoload 'citre-mode "citre" "\
Enable `completion-at-point', xref and imenu integration.

This is a minor mode.  If called interactively, toggle the `Citre mode' mode.
If the prefix argument is positive, enable the mode, and if it is zero or
negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the mode if ARG
is nil, omitted, or is a positive number.  Disable the mode if ARG is a negative
number.

To check whether the minor mode is enabled in the current buffer, evaluate
`citre-mode'.

The mode's hook is called both when the mode is enabled and when it is disabled.

\(fn &optional ARG)" t nil)

(autoload 'citre-auto-enable-citre-mode "citre" "\
Enable `citre-mode' if appropriate.
This means the current major mode satisfies
`citre-auto-enable-citre-mode-modes', and one of
`citre-auto-enable-citre-mode-backends' is usable.

Put this in `find-file-hook' to automatically enable `citre-mode'
when opening a file." nil nil)

(register-definition-prefixes "citre" '("citre-"))

;;;***

;;;### (autoloads nil "citre-backend-interface" "citre-backend-interface.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from citre-backend-interface.el

(register-definition-prefixes "citre-backend-interface" '("citre-"))

;;;***

;;;### (autoloads nil "citre-common-tag" "citre-common-tag.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from citre-common-tag.el

(register-definition-prefixes "citre-common-tag" '("citre-"))

;;;***

;;;### (autoloads nil "citre-common-util" "citre-common-util.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from citre-common-util.el

(register-definition-prefixes "citre-common-util" '("citre-"))

;;;***

;;;### (autoloads nil "citre-ctags" "citre-ctags.el" (0 0 0 0))
;;; Generated autoloads from citre-ctags.el

(put 'citre-tags-file-alist 'safe-local-variable #'listp)

(autoload 'citre-update-tags-file "citre-ctags" "\
Update TAGSFILE.
When called interactively, ask the user to pick a tags file.

If Citre can't find an updating recipe in the tagsfile, ask the
user to edit one and save it to TAGSFILE.

When SYNC is non-nil, update TAGSFILE synchronously if it
contains a recipe.

\(fn &optional TAGSFILE SYNC)" t nil)

(autoload 'citre-update-this-tags-file "citre-ctags" "\
Update the currently used tags file.
When no such tags file is found, ask the user to create one.

When a tags file is found, but Citre can't find an updating
recipe in the tagsfile, ask the user to edit one and save it to
the tags file.

When SYNC is non-nil, update the tags file synchronously.

\(fn &optional SYNC)" t nil)

(autoload 'citre-edit-tags-file-recipe "citre-ctags" "\
Edit the recipe of TAGSFILE.
When called interactively, ask the user to select a tags file.

When CMD-PTAG is non-nil, don't use a command-editing buffer, but
write it to CITRE_CMD ptag directly.

When CWD is non-nil, don't ask the user to pick a root dir to run Ctags.

When NOCONFIRM is non-nil, don't ask the user whether to update
the tags file now (update it directly instead).

\(fn &optional TAGSFILE CMD-PTAG CWD NOCONFIRM)" t nil)

(autoload 'citre-create-tags-file "citre-ctags" "\
Create a new tags file.
An updating recipe is written to it so later it can be updated by
`citre-update-tags-file'." t nil)

(register-definition-prefixes "citre-ctags" '("citre-"))

;;;***

;;;### (autoloads nil "citre-global" "citre-global.el" (0 0 0 0))
;;; Generated autoloads from citre-global.el

(autoload 'citre-global-create-database "citre-global" "\
Create gtags database." t nil)

(autoload 'citre-global-update-database "citre-global" "\
Update the gtags database in use.
If no database is found, prompt the user to create one." t nil)

(register-definition-prefixes "citre-global" '("citre-"))

;;;***

;;;### (autoloads nil "citre-lang-c" "citre-lang-c.el" (0 0 0 0))
;;; Generated autoloads from citre-lang-c.el

(register-definition-prefixes "citre-lang-c" '("citre-lang-c-"))

;;;***

;;;### (autoloads nil "citre-lang-fileref" "citre-lang-fileref.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from citre-lang-fileref.el

(register-definition-prefixes "citre-lang-fileref" '("citre-lang-fileref-"))

;;;***

;;;### (autoloads nil "citre-lang-verilog" "citre-lang-verilog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from citre-lang-verilog.el

(register-definition-prefixes "citre-lang-verilog" '("citre-lang-verilog-"))

;;;***

;;;### (autoloads nil "citre-readtags" "citre-readtags.el" (0 0 0
;;;;;;  0))
;;; Generated autoloads from citre-readtags.el

(register-definition-prefixes "citre-readtags" '("citre-readtags-"))

;;;***

;;;### (autoloads nil "citre-readtags-tables" "citre-readtags-tables.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from citre-readtags-tables.el

(register-definition-prefixes "citre-readtags-tables" '("citre-readtags--"))

;;;***

;;;### (autoloads nil "citre-tags" "citre-tags.el" (0 0 0 0))
;;; Generated autoloads from citre-tags.el

(register-definition-prefixes "citre-tags" '("citre-tags-"))

;;;***

;;;### (autoloads nil "citre-ui-jump" "citre-ui-jump.el" (0 0 0 0))
;;; Generated autoloads from citre-ui-jump.el

(register-definition-prefixes "citre-ui-jump" '("citre-jump-"))

;;;***

;;;### (autoloads nil "citre-ui-peek" "citre-ui-peek.el" (0 0 0 0))
;;; Generated autoloads from citre-ui-peek.el

(register-definition-prefixes "citre-ui-peek" '("citre-"))

;;;***

;;;### (autoloads nil nil ("citre-config.el" "citre-pkg.el") (0 0
;;;;;;  0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; citre-autoloads.el ends here
