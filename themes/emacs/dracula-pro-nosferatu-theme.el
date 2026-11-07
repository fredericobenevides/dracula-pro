;;; dracula-pro-nosferatu-theme.el --- Dracula Pro

;; Copyright (C) 2020-Today Dracula Theme.

;; Author: Dracula Team
;; Version: 1.0.0
;; Package-Requires: ((emacs "24.3"))
;; URL: https://draculatheme.com/pro

;;; Commentary:
;; Dracula PRO is a color scheme and UI theme tailored for programming. Made for terminal emulators, code editors, and syntax highlighters.

;;; Code:

(require 'cl-lib)
(deftheme dracula-pro-nosferatu
  "Dracula PRO - Nosferatu Variant")


;;;; Configuration options:

(defgroup dracula-pro-nosferatu nil
  "Dracula theme options.

The theme has to be reloaded after changing anything in this group."
  :group 'faces)

(defcustom dracula-pro-nosferatu-enlarge-headings t
  "Use different font sizes for some headings and titles."
  :type 'boolean
  :group 'dracula-pro-nosferatu)

(defcustom dracula-pro-nosferatu-height-title-1 1.3
  "Font size 100%."
  :type 'number
  :group 'dracula-pro-nosferatu)

(defcustom dracula-pro-nosferatu-height-title-2 1.1
  "Font size 110%."
  :type 'number
  :group 'dracula-pro-nosferatu)

(defcustom dracula-pro-nosferatu-height-title-3 1.0
  "Font size 130%."
  :type 'number
  :group 'dracula-pro-nosferatu)

(defcustom dracula-pro-nosferatu-height-doc-title 1.44
  "Font size 144%."
  :type 'number
  :group 'dracula-pro-nosferatu)

(defcustom dracula-pro-nosferatu-alternate-mode-line-and-minibuffer nil
  "Use less bold and pink in the minibuffer."
  :type 'boolean
  :group 'dracula-pro-nosferatu)


;;;; Theme definition:

;; Assigment form: VARIABLE COLOR [TTY-COLOR]
(let ((colors '(;; Upstream theme color
                (dracula-pro-nosferatu-bg       "#17191B" "#17191B" nil)             ; Background
                (dracula-pro-nosferatu-fg       "#D2D0CB" "#D2D0CB" "brightwhite")   ; Foreground
                (dracula-pro-nosferatu-current  "#2E3236" "#2E3236" "brightblack")   ; Current-line/selection
                (dracula-pro-nosferatu-comment  "#9EA4AC" "#9EA4AC" "blue")          ; Comment
                (dracula-pro-nosferatu-cyan     "#8FA9B4" "#8FA9B4" "brightcyan")    ; Cyan
                (dracula-pro-nosferatu-green    "#D0DBC4" "#D0DBC4" "green")         ; Green
                (dracula-pro-nosferatu-orange   "#C9A273" "#C9A273" "brightred")     ; Orange
                (dracula-pro-nosferatu-pink     "#EE9440" "#EE9440" "magenta")       ; Pink
                (dracula-pro-nosferatu-purple   "#B3A6BC" "#B3A6BC" "brightmagenta") ; Purple
                (dracula-pro-nosferatu-red      "#FF7D6C" "#FF7D6C" "red")           ; Red
                (dracula-pro-nosferatu-yellow   "#F2C861" "#F2C861" "yellow")        ; Yellow
                ;; Other colors
                (dracula-pro-nosferatu-bg2      "#24282B" "#24282B" "brightblack")
                (dracula-pro-nosferatu-bg3      "#32363A" "#32363A" "brightblack")
                (dracula-pro-nosferatu-bg4      "#383C40" "#383C40" "brightblack")
                (dracula-pro-nosferatu-fg2      "#F7F4ED" "#F7F4ED" "brightwhite")
                (dracula-pro-nosferatu-fg3      "#C4C2BC" "#C4C2BC" "white")
                (dracula-pro-nosferatu-fg4      "#9EA4AC" "#9EA4AC" "white")
                (dracula-pro-nosferatu-alt-blue "#8CA3B5" "#8CA3B5" "brightblue")))
      (faces '(;; default
               (cursor :background ,dracula-pro-nosferatu-fg3)
               (completions-first-difference :foreground ,dracula-pro-nosferatu-pink :weight bold)
               (default :background ,dracula-pro-nosferatu-bg :foreground ,dracula-pro-nosferatu-fg)
               (default-italic :slant italic)
               (ffap :foreground ,dracula-pro-nosferatu-fg4)
               (fringe :background ,dracula-pro-nosferatu-bg :foreground ,dracula-pro-nosferatu-fg4)
               (highlight :foreground ,dracula-pro-nosferatu-fg3 :background ,dracula-pro-nosferatu-bg3)
               (hl-line :background ,dracula-pro-nosferatu-current :extend t)
               (info-quoted-name :foreground ,dracula-pro-nosferatu-orange)
               (info-string :foreground ,dracula-pro-nosferatu-yellow)
               (lazy-highlight :foreground ,dracula-pro-nosferatu-fg2 :background ,dracula-pro-nosferatu-bg2)
               (link :foreground ,dracula-pro-nosferatu-cyan :underline t)
               (linum :slant italic :foreground ,dracula-pro-nosferatu-bg4 :background ,dracula-pro-nosferatu-bg)
               (line-number :slant italic :foreground ,dracula-pro-nosferatu-bg4 :background ,dracula-pro-nosferatu-bg)
               (match :background ,dracula-pro-nosferatu-yellow :foreground ,dracula-pro-nosferatu-bg)
               (minibuffer-prompt
                ,@(if dracula-pro-nosferatu-alternate-mode-line-and-minibuffer
                      (list :weight 'normal :foreground dracula-pro-nosferatu-fg)
                    (list :weight 'bold :foreground dracula-pro-nosferatu-pink)))
               (read-multiple-choice-face :inherit completions-first-difference)
               (region :inherit match :extend t)
               (trailing-whitespace :foreground nil :background ,dracula-pro-nosferatu-orange)
               (vertical-border :foreground ,dracula-pro-nosferatu-bg2)
               (success :foreground ,dracula-pro-nosferatu-green)
               (warning :foreground ,dracula-pro-nosferatu-orange)
               (error :foreground ,dracula-pro-nosferatu-red)
               (header-line :background ,dracula-pro-nosferatu-bg)
               ;; syntax
               (font-lock-builtin-face :foreground ,dracula-pro-nosferatu-orange)
               (font-lock-comment-face :foreground ,dracula-pro-nosferatu-comment)
               (font-lock-comment-delimiter-face :foreground ,dracula-pro-nosferatu-comment)
               (font-lock-constant-face :foreground ,dracula-pro-nosferatu-cyan)
               (font-lock-doc-face :foreground ,dracula-pro-nosferatu-comment)
               (font-lock-function-name-face :foreground ,dracula-pro-nosferatu-green :weight bold)
               (font-lock-keyword-face :weight bold :foreground ,dracula-pro-nosferatu-pink)
               (font-lock-negation-char-face :foreground ,dracula-pro-nosferatu-cyan)
               (font-lock-preprocessor-face :foreground ,dracula-pro-nosferatu-orange)
               (font-lock-reference-face :foreground ,dracula-pro-nosferatu-cyan)
               (font-lock-regexp-grouping-backslash :foreground ,dracula-pro-nosferatu-cyan)
               (font-lock-regexp-grouping-construct :foreground ,dracula-pro-nosferatu-purple)
               (font-lock-string-face :foreground ,dracula-pro-nosferatu-yellow)
               (font-lock-type-face :foreground ,dracula-pro-nosferatu-purple)
               (font-lock-variable-name-face :foreground ,dracula-pro-nosferatu-fg
                                             :weight bold)
               (font-lock-warning-face :foreground ,dracula-pro-nosferatu-orange :background ,dracula-pro-nosferatu-bg2)
               ;; auto-complete
               (ac-completion-face :underline t :foreground ,dracula-pro-nosferatu-pink)
               ;; company
               (company-echo-common :foreground ,dracula-pro-nosferatu-bg :background ,dracula-pro-nosferatu-fg)
               (company-preview :background ,dracula-pro-nosferatu-bg :foreground ,dracula-pro-nosferatu-alt-blue)
               (company-preview-common :foreground ,dracula-pro-nosferatu-bg2 :foreground ,dracula-pro-nosferatu-fg3)
               (company-preview-search :foreground ,dracula-pro-nosferatu-purple :background ,dracula-pro-nosferatu-bg)
               (company-scrollbar-bg :background ,dracula-pro-nosferatu-bg3)
               (company-scrollbar-fg :foreground ,dracula-pro-nosferatu-pink)
               (company-template-field :inherit match)
               (company-tooltip :foreground ,dracula-pro-nosferatu-fg2 :background ,dracula-pro-nosferatu-bg :weight bold)
               (company-tooltip-annotation :foreground ,dracula-pro-nosferatu-cyan)
               (company-tooltip-common :foreground ,dracula-pro-nosferatu-fg3)
               (company-tooltip-common-selection :foreground ,dracula-pro-nosferatu-yellow)
               (company-tooltip-mouse :inherit highlight)
               (company-tooltip-selection :background ,dracula-pro-nosferatu-bg3 :foreground ,dracula-pro-nosferatu-fg3)
               ;; diff-hl
               (diff-hl-change :foreground ,dracula-pro-nosferatu-orange :background ,dracula-pro-nosferatu-orange)
               (diff-hl-delete :foreground ,dracula-pro-nosferatu-red :background ,dracula-pro-nosferatu-red)
               (diff-hl-insert :foreground ,dracula-pro-nosferatu-green :background ,dracula-pro-nosferatu-green)
               ;; dired
               (dired-directory :foreground ,dracula-pro-nosferatu-green :weight normal)
               (dired-flagged :foreground ,dracula-pro-nosferatu-pink)
               (dired-header :foreground ,dracula-pro-nosferatu-fg3 :background ,dracula-pro-nosferatu-bg)
               (dired-ignored :inherit shadow)
               (dired-mark :foreground ,dracula-pro-nosferatu-fg :weight bold)
               (dired-marked :foreground ,dracula-pro-nosferatu-orange :weight bold)
               (dired-perm-write :foreground ,dracula-pro-nosferatu-fg3 :underline t)
               (dired-symlink :foreground ,dracula-pro-nosferatu-yellow :weight normal :slant italic)
               (dired-warning :foreground ,dracula-pro-nosferatu-orange :underline t)
               (diredp-compressed-file-name :foreground ,dracula-pro-nosferatu-fg3)
               (diredp-compressed-file-suffix :foreground ,dracula-pro-nosferatu-fg4)
               (diredp-date-time :foreground ,dracula-pro-nosferatu-fg)
               (diredp-deletion-file-name :foreground ,dracula-pro-nosferatu-pink :background ,dracula-pro-nosferatu-current)
               (diredp-deletion :foreground ,dracula-pro-nosferatu-pink :weight bold)
               (diredp-dir-heading :foreground ,dracula-pro-nosferatu-fg2 :background ,dracula-pro-nosferatu-bg4)
               (diredp-dir-name :inherit dired-directory)
               (diredp-dir-priv :inherit dired-directory)
               (diredp-executable-tag :foreground ,dracula-pro-nosferatu-orange)
               (diredp-file-name :foreground ,dracula-pro-nosferatu-fg)
               (diredp-file-suffix :foreground ,dracula-pro-nosferatu-fg4)
               (diredp-flag-mark-line :foreground ,dracula-pro-nosferatu-fg2 :slant italic :background ,dracula-pro-nosferatu-current)
               (diredp-flag-mark :foreground ,dracula-pro-nosferatu-fg2 :weight bold :background ,dracula-pro-nosferatu-current)
               (diredp-ignored-file-name :foreground ,dracula-pro-nosferatu-fg)
               (diredp-mode-line-flagged :foreground ,dracula-pro-nosferatu-orange)
               (diredp-mode-line-marked :foreground ,dracula-pro-nosferatu-orange)
               (diredp-no-priv :foreground ,dracula-pro-nosferatu-fg)
               (diredp-number :foreground ,dracula-pro-nosferatu-cyan)
               (diredp-other-priv :foreground ,dracula-pro-nosferatu-orange)
               (diredp-rare-priv :foreground ,dracula-pro-nosferatu-orange)
               (diredp-read-priv :foreground ,dracula-pro-nosferatu-purple)
               (diredp-write-priv :foreground ,dracula-pro-nosferatu-pink)
               (diredp-exec-priv :foreground ,dracula-pro-nosferatu-yellow)
               (diredp-symlink :foreground ,dracula-pro-nosferatu-orange)
               (diredp-link-priv :foreground ,dracula-pro-nosferatu-orange)
               (diredp-autofile-name :foreground ,dracula-pro-nosferatu-yellow)
               (diredp-tagged-autofile-name :foreground ,dracula-pro-nosferatu-yellow)
               ;; enh-ruby
               (enh-ruby-heredoc-delimiter-face :foreground ,dracula-pro-nosferatu-yellow)
               (enh-ruby-op-face :foreground ,dracula-pro-nosferatu-pink)
               (enh-ruby-regexp-delimiter-face :foreground ,dracula-pro-nosferatu-yellow)
               (enh-ruby-string-delimiter-face :foreground ,dracula-pro-nosferatu-yellow)
               ;; flyspell
               (flyspell-duplicate :underline (:style wave :color ,dracula-pro-nosferatu-orange))
               (flyspell-incorrect :underline (:style wave :color ,dracula-pro-nosferatu-red))
               ;; font-latex
               (font-latex-bold-face :foreground ,dracula-pro-nosferatu-purple)
               (font-latex-italic-face :foreground ,dracula-pro-nosferatu-pink :slant italic)
               (font-latex-match-reference-keywords :foreground ,dracula-pro-nosferatu-cyan)
               (font-latex-match-variable-keywords :foreground ,dracula-pro-nosferatu-fg)
               (font-latex-string-face :foreground ,dracula-pro-nosferatu-yellow)
               ;; gnus-group
               (gnus-group-mail-1 :foreground ,dracula-pro-nosferatu-pink :weight bold)
               (gnus-group-mail-1-empty :inherit gnus-group-mail-1 :weight normal)
               (gnus-group-mail-2 :foreground ,dracula-pro-nosferatu-cyan :weight bold)
               (gnus-group-mail-2-empty :inherit gnus-group-mail-2 :weight normal)
               (gnus-group-mail-3 :foreground ,dracula-pro-nosferatu-comment :weight bold)
               (gnus-group-mail-3-empty :inherit gnus-group-mail-3 :weight normal)
               (gnus-group-mail-low :foreground ,dracula-pro-nosferatu-current :weight bold)
               (gnus-group-mail-low-empty :inherit gnus-group-mail-low :weight normal)
               (gnus-group-news-1 :foreground ,dracula-pro-nosferatu-pink :weight bold)
               (gnus-group-news-1-empty :inherit gnus-group-news-1 :weight normal)
               (gnus-group-news-2 :foreground ,dracula-pro-nosferatu-cyan :weight bold)
               (gnus-group-news-2-empty :inherit gnus-group-news-2 :weight normal)
               (gnus-group-news-3 :foreground ,dracula-pro-nosferatu-comment :weight bold)
               (gnus-group-news-3-empty :inherit gnus-group-news-3 :weight normal)
               (gnus-group-news-4 :inherit gnus-group-news-low)
               (gnus-group-news-4-empty :inherit gnus-group-news-low-empty)
               (gnus-group-news-5 :inherit gnus-group-news-low)
               (gnus-group-news-5-empty :inherit gnus-group-news-low-empty)
               (gnus-group-news-6 :inherit gnus-group-news-low)
               (gnus-group-news-6-empty :inherit gnus-group-news-low-empty)
               (gnus-group-news-low :foreground ,dracula-pro-nosferatu-current :weight bold)
               (gnus-group-news-low-empty :inherit gnus-group-news-low :weight normal)
               (gnus-header-content :foreground ,dracula-pro-nosferatu-pink)
               (gnus-header-from :foreground ,dracula-pro-nosferatu-fg)
               (gnus-header-name :foreground ,dracula-pro-nosferatu-purple)
               (gnus-header-subject :foreground ,dracula-pro-nosferatu-green :weight bold)
               (gnus-summary-markup-face :foreground ,dracula-pro-nosferatu-cyan)
               (gnus-summary-high-unread :foreground ,dracula-pro-nosferatu-pink :weight bold)
               (gnus-summary-high-read :inherit gnus-summary-high-unread :weight normal)
               (gnus-summary-high-ancient :inherit gnus-summary-high-read)
               (gnus-summary-high-ticked :inherit gnus-summary-high-read :underline t)
               (gnus-summary-normal-unread :foreground ,dracula-pro-nosferatu-alt-blue :weight bold)
               (gnus-summary-normal-read :foreground ,dracula-pro-nosferatu-comment :weight normal)
               (gnus-summary-normal-ancient :inherit gnus-summary-normal-read :weight light)
               (gnus-summary-normal-ticked :foreground ,dracula-pro-nosferatu-pink :weight bold)
               (gnus-summary-low-unread :foreground ,dracula-pro-nosferatu-comment :weight bold)
               (gnus-summary-low-read :inherit gnus-summary-low-unread :weight normal)
               (gnus-summary-low-ancient :inherit gnus-summary-low-read)
               (gnus-summary-low-ticked :inherit gnus-summary-low-read :underline t)
               (gnus-summary-selected :inverse-video t)
               ;; haskell-mode
               (haskell-operator-face :foreground ,dracula-pro-nosferatu-pink)
               (haskell-constructor-face :foreground ,dracula-pro-nosferatu-purple)
               ;; helm
               (helm-bookmark-w3m :foreground ,dracula-pro-nosferatu-purple)
               (helm-buffer-not-saved :foreground ,dracula-pro-nosferatu-purple :background ,dracula-pro-nosferatu-bg)
               (helm-buffer-process :foreground ,dracula-pro-nosferatu-orange :background ,dracula-pro-nosferatu-bg)
               (helm-buffer-saved-out :foreground ,dracula-pro-nosferatu-fg :background ,dracula-pro-nosferatu-bg)
               (helm-buffer-size :foreground ,dracula-pro-nosferatu-fg :background ,dracula-pro-nosferatu-bg)
               (helm-candidate-number :foreground ,dracula-pro-nosferatu-bg :background ,dracula-pro-nosferatu-fg)
               (helm-ff-directory :foreground ,dracula-pro-nosferatu-green :background ,dracula-pro-nosferatu-bg :weight bold)
               (helm-ff-dotted-directory :foreground ,dracula-pro-nosferatu-green :background ,dracula-pro-nosferatu-bg :weight normal)
               (helm-ff-executable :foreground ,dracula-pro-nosferatu-alt-blue :background ,dracula-pro-nosferatu-bg :weight normal)
               (helm-ff-file :foreground ,dracula-pro-nosferatu-fg :background ,dracula-pro-nosferatu-bg :weight normal)
               (helm-ff-invalid-symlink :foreground ,dracula-pro-nosferatu-pink :background ,dracula-pro-nosferatu-bg :weight bold)
               (helm-ff-prefix :foreground ,dracula-pro-nosferatu-bg :background ,dracula-pro-nosferatu-pink :weight normal)
               (helm-ff-symlink :foreground ,dracula-pro-nosferatu-pink :background ,dracula-pro-nosferatu-bg :weight bold)
               (helm-grep-cmd-line :foreground ,dracula-pro-nosferatu-fg :background ,dracula-pro-nosferatu-bg)
               (helm-grep-file :foreground ,dracula-pro-nosferatu-fg :background ,dracula-pro-nosferatu-bg)
               (helm-grep-finish :foreground ,dracula-pro-nosferatu-fg2 :background ,dracula-pro-nosferatu-bg)
               (helm-grep-lineno :foreground ,dracula-pro-nosferatu-fg :background ,dracula-pro-nosferatu-bg)
               (helm-grep-match :foreground nil :background nil :inherit helm-match)
               (helm-grep-running :foreground ,dracula-pro-nosferatu-green :background ,dracula-pro-nosferatu-bg)
               (helm-header :foreground ,dracula-pro-nosferatu-fg2 :background ,dracula-pro-nosferatu-bg :underline nil :box nil)
               (helm-moccur-buffer :foreground ,dracula-pro-nosferatu-green :background ,dracula-pro-nosferatu-bg)
               (helm-selection :background ,dracula-pro-nosferatu-bg2 :underline nil)
               (helm-selection-line :background ,dracula-pro-nosferatu-bg2)
               (helm-separator :foreground ,dracula-pro-nosferatu-purple :background ,dracula-pro-nosferatu-bg)
               (helm-source-go-package-godoc-description :foreground ,dracula-pro-nosferatu-yellow)
               (helm-source-header :foreground ,dracula-pro-nosferatu-pink :background ,dracula-pro-nosferatu-bg :underline nil :weight bold)
               (helm-time-zone-current :foreground ,dracula-pro-nosferatu-orange :background ,dracula-pro-nosferatu-bg)
               (helm-time-zone-home :foreground ,dracula-pro-nosferatu-purple :background ,dracula-pro-nosferatu-bg)
               (helm-visible-mark :foreground ,dracula-pro-nosferatu-bg :background ,dracula-pro-nosferatu-bg3)
               ;; highlight-indentation minor mode
               (highlight-indentation-face :background ,dracula-pro-nosferatu-bg2)
               ;; icicle
               (icicle-whitespace-highlight :background ,dracula-pro-nosferatu-fg)
               (icicle-special-candidate :foreground ,dracula-pro-nosferatu-fg2)
               (icicle-extra-candidate :foreground ,dracula-pro-nosferatu-fg2)
               (icicle-search-main-regexp-others :foreground ,dracula-pro-nosferatu-fg)
               (icicle-search-current-input :foreground ,dracula-pro-nosferatu-pink)
               (icicle-search-context-level-8 :foreground ,dracula-pro-nosferatu-orange)
               (icicle-search-context-level-7 :foreground ,dracula-pro-nosferatu-orange)
               (icicle-search-context-level-6 :foreground ,dracula-pro-nosferatu-orange)
               (icicle-search-context-level-5 :foreground ,dracula-pro-nosferatu-orange)
               (icicle-search-context-level-4 :foreground ,dracula-pro-nosferatu-orange)
               (icicle-search-context-level-3 :foreground ,dracula-pro-nosferatu-orange)
               (icicle-search-context-level-2 :foreground ,dracula-pro-nosferatu-orange)
               (icicle-search-context-level-1 :foreground ,dracula-pro-nosferatu-orange)
               (icicle-search-main-regexp-current :foreground ,dracula-pro-nosferatu-fg)
               (icicle-saved-candidate :foreground ,dracula-pro-nosferatu-fg)
               (icicle-proxy-candidate :foreground ,dracula-pro-nosferatu-fg)
               (icicle-mustmatch-completion :foreground ,dracula-pro-nosferatu-purple)
               (icicle-multi-command-completion :foreground ,dracula-pro-nosferatu-fg2 :background ,dracula-pro-nosferatu-bg2)
               (icicle-msg-emphasis :foreground ,dracula-pro-nosferatu-green)
               (icicle-mode-line-help :foreground ,dracula-pro-nosferatu-fg4)
               (icicle-match-highlight-minibuffer :foreground ,dracula-pro-nosferatu-orange)
               (icicle-match-highlight-Completions :foreground ,dracula-pro-nosferatu-green)
               (icicle-key-complete-menu-local :foreground ,dracula-pro-nosferatu-fg)
               (icicle-key-complete-menu :foreground ,dracula-pro-nosferatu-fg)
               (icicle-input-completion-fail-lax :foreground ,dracula-pro-nosferatu-pink)
               (icicle-input-completion-fail :foreground ,dracula-pro-nosferatu-pink)
               (icicle-historical-candidate-other :foreground ,dracula-pro-nosferatu-fg)
               (icicle-historical-candidate :foreground ,dracula-pro-nosferatu-fg)
               (icicle-current-candidate-highlight :foreground ,dracula-pro-nosferatu-orange :background ,dracula-pro-nosferatu-bg3)
               (icicle-Completions-instruction-2 :foreground ,dracula-pro-nosferatu-fg4)
               (icicle-Completions-instruction-1 :foreground ,dracula-pro-nosferatu-fg4)
               (icicle-completion :foreground ,dracula-pro-nosferatu-fg)
               (icicle-complete-input :foreground ,dracula-pro-nosferatu-orange)
               (icicle-common-match-highlight-Completions :foreground ,dracula-pro-nosferatu-purple)
               (icicle-candidate-part :foreground ,dracula-pro-nosferatu-fg)
               (icicle-annotation :foreground ,dracula-pro-nosferatu-fg4)
               ;; icomplete
               (icompletep-determined :foreground ,dracula-pro-nosferatu-orange)
               ;; ido
               (ido-first-match
                ,@(if dracula-pro-nosferatu-alternate-mode-line-and-minibuffer
                      (list :weight 'normal :foreground dracula-pro-nosferatu-green)
                    (list :weight 'bold :foreground dracula-pro-nosferatu-pink)))
               (ido-only-match :foreground ,dracula-pro-nosferatu-orange)
               (ido-subdir :foreground ,dracula-pro-nosferatu-yellow)
               (ido-virtual :foreground ,dracula-pro-nosferatu-cyan)
               (ido-incomplete-regexp :inherit font-lock-warning-face)
               (ido-indicator :foreground ,dracula-pro-nosferatu-fg :background ,dracula-pro-nosferatu-pink)
               ;; isearch
               (isearch :inherit match :weight bold)
               (isearch-fail :foreground ,dracula-pro-nosferatu-bg :background ,dracula-pro-nosferatu-orange)
               ;; jde-java
               (jde-java-font-lock-constant-face :foreground ,dracula-pro-nosferatu-cyan)
               (jde-java-font-lock-modifier-face :foreground ,dracula-pro-nosferatu-pink)
               (jde-java-font-lock-number-face :foreground ,dracula-pro-nosferatu-fg)
               (jde-java-font-lock-package-face :foreground ,dracula-pro-nosferatu-fg)
               (jde-java-font-lock-private-face :foreground ,dracula-pro-nosferatu-pink)
               (jde-java-font-lock-public-face :foreground ,dracula-pro-nosferatu-pink)
               ;; js2-mode
               (js2-external-variable :foreground ,dracula-pro-nosferatu-purple)
               (js2-function-param :foreground ,dracula-pro-nosferatu-cyan)
               (js2-jsdoc-html-tag-delimiter :foreground ,dracula-pro-nosferatu-yellow)
               (js2-jsdoc-html-tag-name :foreground ,dracula-pro-nosferatu-alt-blue)
               (js2-jsdoc-value :foreground ,dracula-pro-nosferatu-yellow)
               (js2-private-function-call :foreground ,dracula-pro-nosferatu-cyan)
               (js2-private-member :foreground ,dracula-pro-nosferatu-fg3)
               ;; js3-mode
               (js3-error-face :underline ,dracula-pro-nosferatu-orange)
               (js3-external-variable-face :foreground ,dracula-pro-nosferatu-fg)
               (js3-function-param-face :foreground ,dracula-pro-nosferatu-pink)
               (js3-instance-member-face :foreground ,dracula-pro-nosferatu-cyan)
               (js3-jsdoc-tag-face :foreground ,dracula-pro-nosferatu-pink)
               (js3-warning-face :underline ,dracula-pro-nosferatu-pink)
               ;; magit
               (magit-branch-local :foreground ,dracula-pro-nosferatu-cyan)
               (magit-branch-remote :foreground ,dracula-pro-nosferatu-green)
               (magit-tag :foreground ,dracula-pro-nosferatu-orange)
               (magit-section-heading :foreground ,dracula-pro-nosferatu-pink :weight bold)
               (magit-section-highlight :background ,dracula-pro-nosferatu-bg3 :extend t)
               (magit-diff-context-highlight :background ,dracula-pro-nosferatu-bg3
                                             :foreground ,dracula-pro-nosferatu-fg3
                                             :extend t)
               (magit-diff-revision-summary :foreground ,dracula-pro-nosferatu-orange
                                            :background ,dracula-pro-nosferatu-bg
                                            :weight bold)
               (magit-diff-revision-summary-highlight :foreground ,dracula-pro-nosferatu-orange
                                                      :background ,dracula-pro-nosferatu-bg3
                                                      :weight bold
                                                      :extend t)
               ;; the four following lines are just a patch of the
               ;; upstream color to add the extend keyword.
               (magit-diff-added :background "#335533"
                                 :foreground "#ddffdd"
                                 :extend t)
               (magit-diff-added-highlight :background "#336633"
                                           :foreground "#cceecc"
                                           :extend t)
               (magit-diff-removed :background "#553333"
                                   :foreground "#ffdddd"
                                   :extend t)
               (magit-diff-removed-highlight :background "#663333"
                                             :foreground "#eecccc"
                                             :extend t)
               (magit-diff-file-heading :foreground ,dracula-pro-nosferatu-fg)
               (magit-diff-file-heading-highlight :inherit magit-section-highlight)
               (magit-diffstat-added :foreground ,dracula-pro-nosferatu-green)
               (magit-diffstat-removed :foreground ,dracula-pro-nosferatu-red)
               (magit-hash :foreground ,dracula-pro-nosferatu-fg2)
               (magit-hunk-heading :background ,dracula-pro-nosferatu-bg3)
               (magit-hunk-heading-highlight :background ,dracula-pro-nosferatu-bg3)
               (magit-item-highlight :background ,dracula-pro-nosferatu-bg3)
               (magit-log-author :foreground ,dracula-pro-nosferatu-fg3)
               (magit-process-ng :foreground ,dracula-pro-nosferatu-orange :weight bold)
               (magit-process-ok :foreground ,dracula-pro-nosferatu-green :weight bold)
               ;; markdown
               (markdown-blockquote-face :foreground ,dracula-pro-nosferatu-orange)
               (markdown-code-face :foreground ,dracula-pro-nosferatu-orange)
               (markdown-footnote-face :foreground ,dracula-pro-nosferatu-alt-blue)
               (markdown-header-face :weight normal)
               (markdown-header-face-1
                :inherit bold :foreground ,dracula-pro-nosferatu-pink
                ,@(when dracula-pro-nosferatu-enlarge-headings
                    (list :height dracula-pro-nosferatu-height-title-1)))
               (markdown-header-face-2
                :inherit bold :foreground ,dracula-pro-nosferatu-purple
                ,@(when dracula-pro-nosferatu-enlarge-headings
                    (list :height dracula-pro-nosferatu-height-title-2)))
               (markdown-header-face-3
                :foreground ,dracula-pro-nosferatu-green
                ,@(when dracula-pro-nosferatu-enlarge-headings
                    (list :height dracula-pro-nosferatu-height-title-3)))
               (markdown-header-face-4 :foreground ,dracula-pro-nosferatu-yellow)
               (markdown-header-face-5 :foreground ,dracula-pro-nosferatu-cyan)
               (markdown-header-face-6 :foreground ,dracula-pro-nosferatu-orange)
               (markdown-header-face-7 :foreground ,dracula-pro-nosferatu-alt-blue)
               (markdown-header-face-8 :foreground ,dracula-pro-nosferatu-fg)
               (markdown-inline-code-face :foreground ,dracula-pro-nosferatu-yellow)
               (markdown-plain-url-face :inherit link)
               (markdown-pre-face :foreground ,dracula-pro-nosferatu-orange)
               (markdown-table-face :foreground ,dracula-pro-nosferatu-purple)
               ;; message
               (message-mml :foreground ,dracula-pro-nosferatu-green :weight normal)
               (message-header-xheader :foreground ,dracula-pro-nosferatu-cyan :weight normal)
               ;; mode-line
               (mode-line :background ,dracula-pro-nosferatu-current
                          :box ,dracula-pro-nosferatu-current :inverse-video nil
                          ,@(if dracula-pro-nosferatu-alternate-mode-line-and-minibuffer
                                (list :foreground dracula-pro-nosferatu-fg3)
                              (list :foreground nil)))
               (mode-line-inactive
                :inverse-video nil
                ,@(if dracula-pro-nosferatu-alternate-mode-line-and-minibuffer
                      (list :foreground dracula-pro-nosferatu-comment :background dracula-pro-nosferatu-bg
                            :box dracula-pro-nosferatu-bg)
                    (list :foreground dracula-pro-nosferatu-fg :background dracula-pro-nosferatu-bg2 :box dracula-pro-nosferatu-bg2)))
               ;; mu4e
               (mu4e-unread-face :foreground ,dracula-pro-nosferatu-pink :weight normal)
               (mu4e-view-url-number-face :foreground ,dracula-pro-nosferatu-purple)
               (mu4e-highlight-face :background ,dracula-pro-nosferatu-bg
                                    :foreground ,dracula-pro-nosferatu-yellow
                                    :extend t)
               (mu4e-header-highlight-face :background ,dracula-pro-nosferatu-current
                                           :foreground ,dracula-pro-nosferatu-fg
                                           :underline nil :weight bold
                                           :extend t)
               (mu4e-header-key-face :inherit message-mml)
               (mu4e-header-marks-face :foreground ,dracula-pro-nosferatu-purple)
               (mu4e-cited-1-face :foreground ,dracula-pro-nosferatu-purple)
               (mu4e-cited-2-face :foreground ,dracula-pro-nosferatu-orange)
               (mu4e-cited-3-face :foreground ,dracula-pro-nosferatu-comment)
               (mu4e-cited-4-face :foreground ,dracula-pro-nosferatu-fg2)
               (mu4e-cited-5-face :foreground ,dracula-pro-nosferatu-fg3)
               ;; org
               (org-agenda-date :foreground ,dracula-pro-nosferatu-cyan :underline nil)
               (org-agenda-dimmed-todo-face :foreground ,dracula-pro-nosferatu-comment)
               (org-agenda-done :foreground ,dracula-pro-nosferatu-green)
               (org-agenda-structure :foreground ,dracula-pro-nosferatu-purple)
               (org-block :foreground ,dracula-pro-nosferatu-orange)
               (org-code :foreground ,dracula-pro-nosferatu-yellow)
               (org-column :background ,dracula-pro-nosferatu-bg4)
               (org-column-title :inherit org-column :weight bold :underline t)
               (org-date :foreground ,dracula-pro-nosferatu-cyan :underline t)
               (org-document-info :foreground ,dracula-pro-nosferatu-alt-blue)
               (org-document-info-keyword :foreground ,dracula-pro-nosferatu-comment)
               (org-document-title :weight bold :foreground ,dracula-pro-nosferatu-orange
                                   ,@(when dracula-pro-nosferatu-enlarge-headings
                                       (list :height dracula-pro-nosferatu-height-doc-title)))
               (org-done :foreground ,dracula-pro-nosferatu-green)
               (org-ellipsis :foreground ,dracula-pro-nosferatu-comment)
               (org-footnote :foreground ,dracula-pro-nosferatu-alt-blue)
               (org-formula :foreground ,dracula-pro-nosferatu-pink)
               (org-headline-done :foreground ,dracula-pro-nosferatu-comment
                                  :weight normal :strike-through t)
               (org-hide :foreground ,dracula-pro-nosferatu-bg :background ,dracula-pro-nosferatu-bg)
               (org-level-1 :inherit bold :foreground ,dracula-pro-nosferatu-pink
                            ,@(when dracula-pro-nosferatu-enlarge-headings
                                (list :height dracula-pro-nosferatu-height-title-1)))
               (org-level-2 :inherit bold :foreground ,dracula-pro-nosferatu-purple
                            ,@(when dracula-pro-nosferatu-enlarge-headings
                                (list :height dracula-pro-nosferatu-height-title-2)))
               (org-level-3 :weight normal :foreground ,dracula-pro-nosferatu-green
                            ,@(when dracula-pro-nosferatu-enlarge-headings
                                (list :height dracula-pro-nosferatu-height-title-3)))
               (org-level-4 :weight normal :foreground ,dracula-pro-nosferatu-yellow)
               (org-level-5 :weight normal :foreground ,dracula-pro-nosferatu-cyan)
               (org-level-6 :weight normal :foreground ,dracula-pro-nosferatu-orange)
               (org-level-7 :weight normal :foreground ,dracula-pro-nosferatu-alt-blue)
               (org-level-8 :weight normal :foreground ,dracula-pro-nosferatu-fg)
               (org-link :foreground ,dracula-pro-nosferatu-cyan :underline t)
               (org-priority :foreground ,dracula-pro-nosferatu-cyan)
               (org-scheduled :foreground ,dracula-pro-nosferatu-green)
               (org-scheduled-previously :foreground ,dracula-pro-nosferatu-yellow)
               (org-scheduled-today :foreground ,dracula-pro-nosferatu-green)
               (org-sexp-date :foreground ,dracula-pro-nosferatu-fg4)
               (org-special-keyword :foreground ,dracula-pro-nosferatu-yellow)
               (org-table :foreground ,dracula-pro-nosferatu-purple)
               (org-tag :foreground ,dracula-pro-nosferatu-pink :weight bold :background ,dracula-pro-nosferatu-bg2)
               (org-todo :foreground ,dracula-pro-nosferatu-orange :weight bold :background ,dracula-pro-nosferatu-bg2)
               (org-upcoming-deadline :foreground ,dracula-pro-nosferatu-yellow)
               (org-warning :weight bold :foreground ,dracula-pro-nosferatu-pink)
               ;; outline
               (outline-1 :foreground ,dracula-pro-nosferatu-pink)
               (outline-2 :foreground ,dracula-pro-nosferatu-purple)
               (outline-3 :foreground ,dracula-pro-nosferatu-green)
               (outline-4 :foreground ,dracula-pro-nosferatu-yellow)
               (outline-5 :foreground ,dracula-pro-nosferatu-cyan)
               (outline-6 :foreground ,dracula-pro-nosferatu-orange)
               ;; powerline
               (powerline-evil-base-face :foreground ,dracula-pro-nosferatu-bg2)
               (powerline-evil-emacs-face :inherit powerline-evil-base-face :background ,dracula-pro-nosferatu-yellow)
               (powerline-evil-insert-face :inherit powerline-evil-base-face :background ,dracula-pro-nosferatu-cyan)
               (powerline-evil-motion-face :inherit powerline-evil-base-face :background ,dracula-pro-nosferatu-purple)
               (powerline-evil-normal-face :inherit powerline-evil-base-face :background ,dracula-pro-nosferatu-green)
               (powerline-evil-operator-face :inherit powerline-evil-base-face :background ,dracula-pro-nosferatu-pink)
               (powerline-evil-replace-face :inherit powerline-evil-base-face :background ,dracula-pro-nosferatu-red)
               (powerline-evil-visual-face :inherit powerline-evil-base-face :background ,dracula-pro-nosferatu-orange)
               ;; rainbow-delimiters
               (rainbow-delimiters-depth-1-face :foreground ,dracula-pro-nosferatu-fg)
               (rainbow-delimiters-depth-2-face :foreground ,dracula-pro-nosferatu-cyan)
               (rainbow-delimiters-depth-3-face :foreground ,dracula-pro-nosferatu-purple)
               (rainbow-delimiters-depth-4-face :foreground ,dracula-pro-nosferatu-pink)
               (rainbow-delimiters-depth-5-face :foreground ,dracula-pro-nosferatu-orange)
               (rainbow-delimiters-depth-6-face :foreground ,dracula-pro-nosferatu-green)
               (rainbow-delimiters-depth-7-face :foreground ,dracula-pro-nosferatu-yellow)
               (rainbow-delimiters-depth-8-face :foreground ,dracula-pro-nosferatu-alt-blue)
               (rainbow-delimiters-unmatched-face :foreground ,dracula-pro-nosferatu-orange)
               ;; rpm-spec
               (rpm-spec-dir-face :foreground ,dracula-pro-nosferatu-green)
               (rpm-spec-doc-face :foreground ,dracula-pro-nosferatu-pink)
               (rpm-spec-ghost-face :foreground ,dracula-pro-nosferatu-purple)
               (rpm-spec-macro-face :foreground ,dracula-pro-nosferatu-yellow)
               (rpm-spec-obsolete-tag-face :inherit font-lock-warning-face)
               (rpm-spec-package-face :foreground ,dracula-pro-nosferatu-purple)
               (rpm-spec-section-face :foreground ,dracula-pro-nosferatu-yellow)
               (rpm-spec-tag-face :foreground ,dracula-pro-nosferatu-cyan)
               (rpm-spec-var-face :foreground ,dracula-pro-nosferatu-orange)
               ;; show-paren
               (show-paren-match-face :background unspecified
                                      :foreground ,dracula-pro-nosferatu-cyan
                                      :weight bold)
               (show-paren-match :background unspecified
                                 :foreground ,dracula-pro-nosferatu-cyan
                                 :weight bold)
               (show-paren-match-expression :inherit match)
               (show-paren-mismatch :inherit font-lock-warning-face)
               ;; slime
               (slime-repl-inputed-output-face :foreground ,dracula-pro-nosferatu-purple)
               ;; spam
               (spam :inherit gnus-summary-normal-read :foreground ,dracula-pro-nosferatu-orange
                     :strike-through t :slant oblique)
               ;; tab-bar & tab-line (since Emacs 27.1)
               (tab-bar :foreground ,dracula-pro-nosferatu-purple :background ,dracula-pro-nosferatu-current
                        :inherit variable-pitch)
               (tab-bar-tab :foreground ,dracula-pro-nosferatu-pink :background ,dracula-pro-nosferatu-bg
                            :box (:line-width 2 :color ,dracula-pro-nosferatu-bg :style nil))
               (tab-bar-tab-inactive :foreground ,dracula-pro-nosferatu-purple :background ,dracula-pro-nosferatu-bg2
                                     :box (:line-width 2 :color ,dracula-pro-nosferatu-bg2 :style nil))
               (tab-line :foreground ,dracula-pro-nosferatu-purple :background ,dracula-pro-nosferatu-current
                         :height 0.9 :inherit variable-pitch)
               (tab-line-tab :foreground ,dracula-pro-nosferatu-pink :background ,dracula-pro-nosferatu-bg
                             :box (:line-width 2 :color ,dracula-pro-nosferatu-bg :style nil))
               (tab-line-tab-inactive :foreground ,dracula-pro-nosferatu-purple :background ,dracula-pro-nosferatu-bg2
                                      :box (:line-width 2 :color ,dracula-pro-nosferatu-bg2 :style nil))
               (tab-line-tab-current :inherit tab-line-tab)
               (tab-line-close-highlight :foreground ,dracula-pro-nosferatu-red)
               ;; term
               (term :foreground ,dracula-pro-nosferatu-fg :background ,dracula-pro-nosferatu-bg)
               (term-color-black :foreground ,dracula-pro-nosferatu-bg :background ,dracula-pro-nosferatu-bg)
               (term-color-blue :foreground ,dracula-pro-nosferatu-purple :background ,dracula-pro-nosferatu-purple)
               (term-color-cyan :foreground ,dracula-pro-nosferatu-cyan :background ,dracula-pro-nosferatu-cyan)
               (term-color-green :foreground ,dracula-pro-nosferatu-green :background ,dracula-pro-nosferatu-green)
               (term-color-magenta :foreground ,dracula-pro-nosferatu-pink :background ,dracula-pro-nosferatu-pink)
               (term-color-red :foreground ,dracula-pro-nosferatu-red :background ,dracula-pro-nosferatu-red)
               (term-color-white :foreground ,dracula-pro-nosferatu-fg :background ,dracula-pro-nosferatu-fg)
               (term-color-yellow :foreground ,dracula-pro-nosferatu-yellow :background ,dracula-pro-nosferatu-yellow)
               ;; undo-tree
               (undo-tree-visualizer-current-face :foreground ,dracula-pro-nosferatu-orange)
               (undo-tree-visualizer-default-face :foreground ,dracula-pro-nosferatu-fg2)
               (undo-tree-visualizer-register-face :foreground ,dracula-pro-nosferatu-purple)
               (undo-tree-visualizer-unmodified-face :foreground ,dracula-pro-nosferatu-fg)
               ;; web-mode
               (web-mode-builtin-face :inherit ,font-lock-builtin-face)
               (web-mode-comment-face :inherit ,font-lock-comment-face)
               (web-mode-constant-face :inherit ,font-lock-constant-face)
               (web-mode-doctype-face :inherit ,font-lock-comment-face)
               (web-mode-function-name-face :inherit ,font-lock-function-name-face)
               (web-mode-html-attr-name-face :foreground ,dracula-pro-nosferatu-purple)
               (web-mode-html-attr-value-face :foreground ,dracula-pro-nosferatu-green)
               (web-mode-html-tag-face :foreground ,dracula-pro-nosferatu-pink :weight bold)
               (web-mode-keyword-face :foreground ,dracula-pro-nosferatu-pink)
               (web-mode-string-face :foreground ,dracula-pro-nosferatu-yellow)
               (web-mode-type-face :inherit ,font-lock-type-face)
               (web-mode-warning-face :inherit ,font-lock-warning-face)
               ;; which-func
               (which-func :inherit ,font-lock-function-name-face)
               ;; whitespace
               (whitespace-big-indent :background ,dracula-pro-nosferatu-red :foreground ,dracula-pro-nosferatu-red)
               (whitespace-empty :background ,dracula-pro-nosferatu-orange :foreground ,dracula-pro-nosferatu-red)
               (whitespace-hspace :background ,dracula-pro-nosferatu-bg3 :foreground ,dracula-pro-nosferatu-comment)
               (whitespace-indentation :background ,dracula-pro-nosferatu-orange :foreground ,dracula-pro-nosferatu-red)
               (whitespace-line :background ,dracula-pro-nosferatu-bg :foreground ,dracula-pro-nosferatu-pink)
               (whitespace-newline :foreground ,dracula-pro-nosferatu-comment)
               (whitespace-space :background ,dracula-pro-nosferatu-bg :foreground ,dracula-pro-nosferatu-comment)
               (whitespace-space-after-tab :background ,dracula-pro-nosferatu-orange :foreground ,dracula-pro-nosferatu-red)
               (whitespace-space-before-tab :background ,dracula-pro-nosferatu-orange :foreground ,dracula-pro-nosferatu-red)
               (whitespace-tab :background ,dracula-pro-nosferatu-bg2 :foreground ,dracula-pro-nosferatu-comment)
               (whitespace-trailing :inherit trailing-whitespace)
               ;; yard-mode
               (yard-tag-face :inherit ,font-lock-builtin-face)
               (yard-directive-face :inherit ,font-lock-builtin-face))))

  (apply #'custom-theme-set-faces
         'dracula-pro-nosferatu
         (let ((color-names (mapcar #'car colors))
               (graphic-colors (mapcar #'cadr colors))
               (term-colors (mapcar #'car (mapcar #'cddr colors)))
               (tty-colors (mapcar #'car (mapcar #'last colors)))
               (expand-for-kind (lambda (kind spec)
                                  (cl-progv color-names kind
                                    (eval `(backquote ,spec))))))
           (cl-loop for (face . spec) in faces
                    collect `(,face
                              ((((min-colors 16777216)) ; fully graphical envs
                                ,(funcall expand-for-kind graphic-colors spec))
                               (((min-colors 256))      ; terminal withs 256 colors
                                ,(funcall expand-for-kind term-colors spec))
                               (t                       ; should be only tty-like envs
                                ,(funcall expand-for-kind tty-colors spec))))))))


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'dracula-pro-nosferatu)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:

;;; dracula-pro-nosferatu-theme.el ends here