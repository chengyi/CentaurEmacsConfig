;;; auto-dark-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "auto-dark" "auto-dark.el" (0 0 0 0))
;;; Generated autoloads from auto-dark.el

(defvar auto-dark-mode nil "\
Non-nil if Auto-Dark mode is enabled.
See the `auto-dark-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `auto-dark-mode'.")

(custom-autoload 'auto-dark-mode "auto-dark" nil)

(autoload 'auto-dark-mode "auto-dark" "\
Toggle `auto-dark-mode' on or off.

This is a minor mode.  If called interactively, toggle the
`Auto-Dark mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `(default-value \\='auto-dark-mode)'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "auto-dark" '("auto-dark-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; auto-dark-autoloads.el ends here
