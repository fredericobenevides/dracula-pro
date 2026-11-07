;;; dracula-pro-van-helsing-theme.el --- Dracula Pro

;; Copyright (C) 2020-Today Dracula Theme.

;; Author: Dracula Team
;; Version: 1.0.0
;; Package-Requires: ((emacs "24.3"))
;; URL: https://draculatheme.com/pro

;;; Commentary:
;; Dracula PRO is a color scheme and UI theme tailored for programming. Made for terminal emulators, code editors, and syntax highlighters.

;;; Code:

(require 'cl-lib)
(deftheme dracula-pro-van-helsing
  "Dracula PRO - Van-Helsing Variant")


;;;; Configuration options:

(defgroup dracula-pro-van-helsing nil
  "Dracula theme options.

The theme has to be reloaded after changing anything in this group."
  :group 'faces)

(defcustom dracula-pro-van-helsing-enlarge-headings t
  "Use different font sizes for some headings and titles."
  :type 'boolean
  :group 'dracula-pro-van-helsing)

(defcustom dracula-pro-van-helsing-height-title-1 1.3
  "Font size 100%."
  :type 'number
  :group 'dracula-pro-van-helsing)

(defcustom dracula-pro-van-helsing-height-title-2 1.1
  "Font size 110%."
  :type 'number
  :group 'dracula-pro-van-helsing)

(defcustom dracula-pro-van-helsing-height-title-3 1.0
  "Font size 130%."
  :type 'number
  :group 'dracula-pro-van-helsing)

(defcustom dracula-pro-van-helsing-height-doc-title 1.44
  "Font size 144%."
  :type 'number
  :group 'dracula-pro-van-helsing)

(defcustom dracula-pro-van-helsing-alternate-mode-line-and-minibuffer nil
  "Use less bold and pink in the minibuffer."
  :type 'boolean
  :group 'dracula-pro-van-helsing)


;;;; Theme definition:

;; Assigment form: VARIABLE COLOR [TTY-COLOR]
(let ((colors '(;; Upstream theme color
                (dracula-pro-van-helsing-bg        "#0B0D0F" "#0A0D10" nil)             ; Background
                (dracula-pro-van-helsing-fg        "#F8F8F2" "#F9F9F1" "brightwhite")   ; Foreground
                (dracula-pro-van-helsing-current   "#414D58" "#3D4D5C" "brightblack")   ; Current-line/selection
                (dracula-pro-van-helsing-comment   "#708DA9" "#6A8DAF" "blue")          ; Comment
                (dracula-pro-van-helsing-cyan      "#80FFEA" "#86F9E6" "brightcyan")    ; Cyan
                (dracula-pro-van-helsing-green     "#8AFF80" "#8FF986" "green")         ; Green
                (dracula-pro-van-helsing-orange    "#FFCA80" "#F9C986" "brightred")     ; Orange
                (dracula-pro-van-helsing-pink      "#FF80BF" "#F986BF" "magenta")       ; Pink
                (dracula-pro-van-helsing-purple    "#9580FF" "#9986F9" "brightmagenta") ; Purple
                (dracula-pro-van-helsing-red       "#FF9580" "#F99986" "red")           ; Red
                (dracula-pro-van-helsing-yellow    "#FFFF80" "#F9F986" "yellow")        ; Yellow
                ;; Other colors
                (dracula-pro-van-helsing-bg2       "#1F272E" "#29333D" "brightblack")
                (dracula-pro-van-helsing-bg3       "#29333D" "#33404D" "brightblack")
                (dracula-pro-van-helsing-bg4       "#33404C" "#3D4D5C" "brightblack")
                (dracula-pro-van-helsing-fg2       "#EDEDDE" "#EBEBE0" "brightwhite")
                (dracula-pro-van-helsing-fg3       "#D6D6C2" "#D1D1C7" "white")
                (dracula-pro-van-helsing-fg4       "#BABAAB" "#B3B3B3" "white")
                (dracula-pro-van-helsing-alt-blue  "#8A75F0" "#846EF7" "brightblue")))
      (faces '(;; default
               (cursor :background ,dracula-pro-van-helsing-fg3)
               (completions-first-difference :foreground ,dracula-pro-van-helsing-pink :weight bold)
               (default :background ,dracula-pro-van-helsing-bg :foreground ,dracula-pro-van-helsing-fg)
               (default-italic :slant italic)
               (ffap :foreground ,dracula-pro-van-helsing-fg4)
               (fringe :background ,dracula-pro-van-helsing-bg :foreground ,dracula-pro-van-helsing-fg4)
               (highlight :foreground ,dracula-pro-van-helsing-fg3 :background ,dracula-pro-van-helsing-bg3)
               (hl-line :background ,dracula-pro-van-helsing-current :extend t)
               (info-quoted-name :foreground ,dracula-pro-van-helsing-orange)
               (info-string :foreground ,dracula-pro-van-helsing-yellow)
               (lazy-highlight :foreground ,dracula-pro-van-helsing-fg2 :background ,dracula-pro-van-helsing-bg2)
               (link :foreground ,dracula-pro-van-helsing-cyan :underline t)
               (linum :slant italic :foreground ,dracula-pro-van-helsing-bg4 :background ,dracula-pro-van-helsing-bg)
               (line-number :slant italic :foreground ,dracula-pro-van-helsing-bg4 :background ,dracula-pro-van-helsing-bg)
               (match :background ,dracula-pro-van-helsing-yellow :foreground ,dracula-pro-van-helsing-bg)
               (minibuffer-prompt
                ,@(if dracula-pro-van-helsing-alternate-mode-line-and-minibuffer
                      (list :weight 'normal :foreground dracula-pro-van-helsing-fg)
                    (list :weight 'bold :foreground dracula-pro-van-helsing-pink)))
               (read-multiple-choice-face :inherit completions-first-difference)
               (region :inherit match :extend t)
               (trailing-whitespace :foreground nil :background ,dracula-pro-van-helsing-orange)
               (vertical-border :foreground ,dracula-pro-van-helsing-bg2)
               (success :foreground ,dracula-pro-van-helsing-green)
               (warning :foreground ,dracula-pro-van-helsing-orange)
               (error :foreground ,dracula-pro-van-helsing-red)
               (header-line :background ,dracula-pro-van-helsing-bg)
               ;; syntax
               (font-lock-builtin-face :foreground ,dracula-pro-van-helsing-orange)
               (font-lock-comment-face :foreground ,dracula-pro-van-helsing-comment)
               (font-lock-comment-delimiter-face :foreground ,dracula-pro-van-helsing-comment)
               (font-lock-constant-face :foreground ,dracula-pro-van-helsing-cyan)
               (font-lock-doc-face :foreground ,dracula-pro-van-helsing-comment)
               (font-lock-function-name-face :foreground ,dracula-pro-van-helsing-green :weight bold)
               (font-lock-keyword-face :weight bold :foreground ,dracula-pro-van-helsing-pink)
               (font-lock-negation-char-face :foreground ,dracula-pro-van-helsing-cyan)
               (font-lock-preprocessor-face :foreground ,dracula-pro-van-helsing-orange)
               (font-lock-reference-face :foreground ,dracula-pro-van-helsing-cyan)
               (font-lock-regexp-grouping-backslash :foreground ,dracula-pro-van-helsing-cyan)
               (font-lock-regexp-grouping-construct :foreground ,dracula-pro-van-helsing-purple)
               (font-lock-string-face :foreground ,dracula-pro-van-helsing-yellow)
               (font-lock-type-face :foreground ,dracula-pro-van-helsing-purple)
               (font-lock-variable-name-face :foreground ,dracula-pro-van-helsing-fg
                                             :weight bold)
               (font-lock-warning-face :foreground ,dracula-pro-van-helsing-orange :background ,dracula-pro-van-helsing-bg2)
               ;; auto-complete
               (ac-completion-face :underline t :foreground ,dracula-pro-van-helsing-pink)
               ;; company
               (company-echo-common :foreground ,dracula-pro-van-helsing-bg :background ,dracula-pro-van-helsing-fg)
               (company-preview :background ,dracula-pro-van-helsing-bg :foreground ,dracula-pro-van-helsing-alt-blue)
               (company-preview-common :foreground ,dracula-pro-van-helsing-bg2 :foreground ,dracula-pro-van-helsing-fg3)
               (company-preview-search :foreground ,dracula-pro-van-helsing-purple :background ,dracula-pro-van-helsing-bg)
               (company-scrollbar-bg :background ,dracula-pro-van-helsing-bg3)
               (company-scrollbar-fg :foreground ,dracula-pro-van-helsing-pink)
               (company-template-field :inherit match)
               (company-tooltip :foreground ,dracula-pro-van-helsing-fg2 :background ,dracula-pro-van-helsing-bg :weight bold)
               (company-tooltip-annotation :foreground ,dracula-pro-van-helsing-cyan)
               (company-tooltip-common :foreground ,dracula-pro-van-helsing-fg3)
               (company-tooltip-common-selection :foreground ,dracula-pro-van-helsing-yellow)
               (company-tooltip-mouse :inherit highlight)
               (company-tooltip-selection :background ,dracula-pro-van-helsing-bg3 :foreground ,dracula-pro-van-helsing-fg3)
               ;; diff-hl
               (diff-hl-change :foreground ,dracula-pro-van-helsing-orange :background ,dracula-pro-van-helsing-orange)
               (diff-hl-delete :foreground ,dracula-pro-van-helsing-red :background ,dracula-pro-van-helsing-red)
               (diff-hl-insert :foreground ,dracula-pro-van-helsing-green :background ,dracula-pro-van-helsing-green)
               ;; dired
               (dired-directory :foreground ,dracula-pro-van-helsing-green :weight normal)
               (dired-flagged :foreground ,dracula-pro-van-helsing-pink)
               (dired-header :foreground ,dracula-pro-van-helsing-fg3 :background ,dracula-pro-van-helsing-bg)
               (dired-ignored :inherit shadow)
               (dired-mark :foreground ,dracula-pro-van-helsing-fg :weight bold)
               (dired-marked :foreground ,dracula-pro-van-helsing-orange :weight bold)
               (dired-perm-write :foreground ,dracula-pro-van-helsing-fg3 :underline t)
               (dired-symlink :foreground ,dracula-pro-van-helsing-yellow :weight normal :slant italic)
               (dired-warning :foreground ,dracula-pro-van-helsing-orange :underline t)
               (diredp-compressed-file-name :foreground ,dracula-pro-van-helsing-fg3)
               (diredp-compressed-file-suffix :foreground ,dracula-pro-van-helsing-fg4)
               (diredp-date-time :foreground ,dracula-pro-van-helsing-fg)
               (diredp-deletion-file-name :foreground ,dracula-pro-van-helsing-pink :background ,dracula-pro-van-helsing-current)
               (diredp-deletion :foreground ,dracula-pro-van-helsing-pink :weight bold)
               (diredp-dir-heading :foreground ,dracula-pro-van-helsing-fg2 :background ,dracula-pro-van-helsing-bg4)
               (diredp-dir-name :inherit dired-directory)
               (diredp-dir-priv :inherit dired-directory)
               (diredp-executable-tag :foreground ,dracula-pro-van-helsing-orange)
               (diredp-file-name :foreground ,dracula-pro-van-helsing-fg)
               (diredp-file-suffix :foreground ,dracula-pro-van-helsing-fg4)
               (diredp-flag-mark-line :foreground ,dracula-pro-van-helsing-fg2 :slant italic :background ,dracula-pro-van-helsing-current)
               (diredp-flag-mark :foreground ,dracula-pro-van-helsing-fg2 :weight bold :background ,dracula-pro-van-helsing-current)
               (diredp-ignored-file-name :foreground ,dracula-pro-van-helsing-fg)
               (diredp-mode-line-flagged :foreground ,dracula-pro-van-helsing-orange)
               (diredp-mode-line-marked :foreground ,dracula-pro-van-helsing-orange)
               (diredp-no-priv :foreground ,dracula-pro-van-helsing-fg)
               (diredp-number :foreground ,dracula-pro-van-helsing-cyan)
               (diredp-other-priv :foreground ,dracula-pro-van-helsing-orange)
               (diredp-rare-priv :foreground ,dracula-pro-van-helsing-orange)
               (diredp-read-priv :foreground ,dracula-pro-van-helsing-purple)
               (diredp-write-priv :foreground ,dracula-pro-van-helsing-pink)
               (diredp-exec-priv :foreground ,dracula-pro-van-helsing-yellow)
               (diredp-symlink :foreground ,dracula-pro-van-helsing-orange)
               (diredp-link-priv :foreground ,dracula-pro-van-helsing-orange)
               (diredp-autofile-name :foreground ,dracula-pro-van-helsing-yellow)
               (diredp-tagged-autofile-name :foreground ,dracula-pro-van-helsing-yellow)
               ;; enh-ruby
               (enh-ruby-heredoc-delimiter-face :foreground ,dracula-pro-van-helsing-yellow)
               (enh-ruby-op-face :foreground ,dracula-pro-van-helsing-pink)
               (enh-ruby-regexp-delimiter-face :foreground ,dracula-pro-van-helsing-yellow)
               (enh-ruby-string-delimiter-face :foreground ,dracula-pro-van-helsing-yellow)
               ;; flyspell
               (flyspell-duplicate :underline (:style wave :color ,dracula-pro-van-helsing-orange))
               (flyspell-incorrect :underline (:style wave :color ,dracula-pro-van-helsing-red))
               ;; font-latex
               (font-latex-bold-face :foreground ,dracula-pro-van-helsing-purple)
               (font-latex-italic-face :foreground ,dracula-pro-van-helsing-pink :slant italic)
               (font-latex-match-reference-keywords :foreground ,dracula-pro-van-helsing-cyan)
               (font-latex-match-variable-keywords :foreground ,dracula-pro-van-helsing-fg)
               (font-latex-string-face :foreground ,dracula-pro-van-helsing-yellow)
               ;; gnus-group
               (gnus-group-mail-1 :foreground ,dracula-pro-van-helsing-pink :weight bold)
               (gnus-group-mail-1-empty :inherit gnus-group-mail-1 :weight normal)
               (gnus-group-mail-2 :foreground ,dracula-pro-van-helsing-cyan :weight bold)
               (gnus-group-mail-2-empty :inherit gnus-group-mail-2 :weight normal)
               (gnus-group-mail-3 :foreground ,dracula-pro-van-helsing-comment :weight bold)
               (gnus-group-mail-3-empty :inherit gnus-group-mail-3 :weight normal)
               (gnus-group-mail-low :foreground ,dracula-pro-van-helsing-current :weight bold)
               (gnus-group-mail-low-empty :inherit gnus-group-mail-low :weight normal)
               (gnus-group-news-1 :foreground ,dracula-pro-van-helsing-pink :weight bold)
               (gnus-group-news-1-empty :inherit gnus-group-news-1 :weight normal)
               (gnus-group-news-2 :foreground ,dracula-pro-van-helsing-cyan :weight bold)
               (gnus-group-news-2-empty :inherit gnus-group-news-2 :weight normal)
               (gnus-group-news-3 :foreground ,dracula-pro-van-helsing-comment :weight bold)
               (gnus-group-news-3-empty :inherit gnus-group-news-3 :weight normal)
               (gnus-group-news-4 :inherit gnus-group-news-low)
               (gnus-group-news-4-empty :inherit gnus-group-news-low-empty)
               (gnus-group-news-5 :inherit gnus-group-news-low)
               (gnus-group-news-5-empty :inherit gnus-group-news-low-empty)
               (gnus-group-news-6 :inherit gnus-group-news-low)
               (gnus-group-news-6-empty :inherit gnus-group-news-low-empty)
               (gnus-group-news-low :foreground ,dracula-pro-van-helsing-current :weight bold)
               (gnus-group-news-low-empty :inherit gnus-group-news-low :weight normal)
               (gnus-header-content :foreground ,dracula-pro-van-helsing-pink)
               (gnus-header-from :foreground ,dracula-pro-van-helsing-fg)
               (gnus-header-name :foreground ,dracula-pro-van-helsing-purple)
               (gnus-header-subject :foreground ,dracula-pro-van-helsing-green :weight bold)
               (gnus-summary-markup-face :foreground ,dracula-pro-van-helsing-cyan)
               (gnus-summary-high-unread :foreground ,dracula-pro-van-helsing-pink :weight bold)
               (gnus-summary-high-read :inherit gnus-summary-high-unread :weight normal)
               (gnus-summary-high-ancient :inherit gnus-summary-high-read)
               (gnus-summary-high-ticked :inherit gnus-summary-high-read :underline t)
               (gnus-summary-normal-unread :foreground ,dracula-pro-van-helsing-alt-blue :weight bold)
               (gnus-summary-normal-read :foreground ,dracula-pro-van-helsing-comment :weight normal)
               (gnus-summary-normal-ancient :inherit gnus-summary-normal-read :weight light)
               (gnus-summary-normal-ticked :foreground ,dracula-pro-van-helsing-pink :weight bold)
               (gnus-summary-low-unread :foreground ,dracula-pro-van-helsing-comment :weight bold)
               (gnus-summary-low-read :inherit gnus-summary-low-unread :weight normal)
               (gnus-summary-low-ancient :inherit gnus-summary-low-read)
               (gnus-summary-low-ticked :inherit gnus-summary-low-read :underline t)
               (gnus-summary-selected :inverse-video t)
               ;; haskell-mode
               (haskell-operator-face :foreground ,dracula-pro-van-helsing-pink)
               (haskell-constructor-face :foreground ,dracula-pro-van-helsing-purple)
               ;; helm
               (helm-bookmark-w3m :foreground ,dracula-pro-van-helsing-purple)
               (helm-buffer-not-saved :foreground ,dracula-pro-van-helsing-purple :background ,dracula-pro-van-helsing-bg)
               (helm-buffer-process :foreground ,dracula-pro-van-helsing-orange :background ,dracula-pro-van-helsing-bg)
               (helm-buffer-saved-out :foreground ,dracula-pro-van-helsing-fg :background ,dracula-pro-van-helsing-bg)
               (helm-buffer-size :foreground ,dracula-pro-van-helsing-fg :background ,dracula-pro-van-helsing-bg)
               (helm-candidate-number :foreground ,dracula-pro-van-helsing-bg :background ,dracula-pro-van-helsing-fg)
               (helm-ff-directory :foreground ,dracula-pro-van-helsing-green :background ,dracula-pro-van-helsing-bg :weight bold)
               (helm-ff-dotted-directory :foreground ,dracula-pro-van-helsing-green :background ,dracula-pro-van-helsing-bg :weight normal)
               (helm-ff-executable :foreground ,dracula-pro-van-helsing-alt-blue :background ,dracula-pro-van-helsing-bg :weight normal)
               (helm-ff-file :foreground ,dracula-pro-van-helsing-fg :background ,dracula-pro-van-helsing-bg :weight normal)
               (helm-ff-invalid-symlink :foreground ,dracula-pro-van-helsing-pink :background ,dracula-pro-van-helsing-bg :weight bold)
               (helm-ff-prefix :foreground ,dracula-pro-van-helsing-bg :background ,dracula-pro-van-helsing-pink :weight normal)
               (helm-ff-symlink :foreground ,dracula-pro-van-helsing-pink :background ,dracula-pro-van-helsing-bg :weight bold)
               (helm-grep-cmd-line :foreground ,dracula-pro-van-helsing-fg :background ,dracula-pro-van-helsing-bg)
               (helm-grep-file :foreground ,dracula-pro-van-helsing-fg :background ,dracula-pro-van-helsing-bg)
               (helm-grep-finish :foreground ,dracula-pro-van-helsing-fg2 :background ,dracula-pro-van-helsing-bg)
               (helm-grep-lineno :foreground ,dracula-pro-van-helsing-fg :background ,dracula-pro-van-helsing-bg)
               (helm-grep-match :foreground nil :background nil :inherit helm-match)
               (helm-grep-running :foreground ,dracula-pro-van-helsing-green :background ,dracula-pro-van-helsing-bg)
               (helm-header :foreground ,dracula-pro-van-helsing-fg2 :background ,dracula-pro-van-helsing-bg :underline nil :box nil)
               (helm-moccur-buffer :foreground ,dracula-pro-van-helsing-green :background ,dracula-pro-van-helsing-bg)
               (helm-selection :background ,dracula-pro-van-helsing-bg2 :underline nil)
               (helm-selection-line :background ,dracula-pro-van-helsing-bg2)
               (helm-separator :foreground ,dracula-pro-van-helsing-purple :background ,dracula-pro-van-helsing-bg)
               (helm-source-go-package-godoc-description :foreground ,dracula-pro-van-helsing-yellow)
               (helm-source-header :foreground ,dracula-pro-van-helsing-pink :background ,dracula-pro-van-helsing-bg :underline nil :weight bold)
               (helm-time-zone-current :foreground ,dracula-pro-van-helsing-orange :background ,dracula-pro-van-helsing-bg)
               (helm-time-zone-home :foreground ,dracula-pro-van-helsing-purple :background ,dracula-pro-van-helsing-bg)
               (helm-visible-mark :foreground ,dracula-pro-van-helsing-bg :background ,dracula-pro-van-helsing-bg3)
               ;; highlight-indentation minor mode
               (highlight-indentation-face :background ,dracula-pro-van-helsing-bg2)
               ;; icicle
               (icicle-whitespace-highlight :background ,dracula-pro-van-helsing-fg)
               (icicle-special-candidate :foreground ,dracula-pro-van-helsing-fg2)
               (icicle-extra-candidate :foreground ,dracula-pro-van-helsing-fg2)
               (icicle-search-main-regexp-others :foreground ,dracula-pro-van-helsing-fg)
               (icicle-search-current-input :foreground ,dracula-pro-van-helsing-pink)
               (icicle-search-context-level-8 :foreground ,dracula-pro-van-helsing-orange)
               (icicle-search-context-level-7 :foreground ,dracula-pro-van-helsing-orange)
               (icicle-search-context-level-6 :foreground ,dracula-pro-van-helsing-orange)
               (icicle-search-context-level-5 :foreground ,dracula-pro-van-helsing-orange)
               (icicle-search-context-level-4 :foreground ,dracula-pro-van-helsing-orange)
               (icicle-search-context-level-3 :foreground ,dracula-pro-van-helsing-orange)
               (icicle-search-context-level-2 :foreground ,dracula-pro-van-helsing-orange)
               (icicle-search-context-level-1 :foreground ,dracula-pro-van-helsing-orange)
               (icicle-search-main-regexp-current :foreground ,dracula-pro-van-helsing-fg)
               (icicle-saved-candidate :foreground ,dracula-pro-van-helsing-fg)
               (icicle-proxy-candidate :foreground ,dracula-pro-van-helsing-fg)
               (icicle-mustmatch-completion :foreground ,dracula-pro-van-helsing-purple)
               (icicle-multi-command-completion :foreground ,dracula-pro-van-helsing-fg2 :background ,dracula-pro-van-helsing-bg2)
               (icicle-msg-emphasis :foreground ,dracula-pro-van-helsing-green)
               (icicle-mode-line-help :foreground ,dracula-pro-van-helsing-fg4)
               (icicle-match-highlight-minibuffer :foreground ,dracula-pro-van-helsing-orange)
               (icicle-match-highlight-Completions :foreground ,dracula-pro-van-helsing-green)
               (icicle-key-complete-menu-local :foreground ,dracula-pro-van-helsing-fg)
               (icicle-key-complete-menu :foreground ,dracula-pro-van-helsing-fg)
               (icicle-input-completion-fail-lax :foreground ,dracula-pro-van-helsing-pink)
               (icicle-input-completion-fail :foreground ,dracula-pro-van-helsing-pink)
               (icicle-historical-candidate-other :foreground ,dracula-pro-van-helsing-fg)
               (icicle-historical-candidate :foreground ,dracula-pro-van-helsing-fg)
               (icicle-current-candidate-highlight :foreground ,dracula-pro-van-helsing-orange :background ,dracula-pro-van-helsing-bg3)
               (icicle-Completions-instruction-2 :foreground ,dracula-pro-van-helsing-fg4)
               (icicle-Completions-instruction-1 :foreground ,dracula-pro-van-helsing-fg4)
               (icicle-completion :foreground ,dracula-pro-van-helsing-fg)
               (icicle-complete-input :foreground ,dracula-pro-van-helsing-orange)
               (icicle-common-match-highlight-Completions :foreground ,dracula-pro-van-helsing-purple)
               (icicle-candidate-part :foreground ,dracula-pro-van-helsing-fg)
               (icicle-annotation :foreground ,dracula-pro-van-helsing-fg4)
               ;; icomplete
               (icompletep-determined :foreground ,dracula-pro-van-helsing-orange)
               ;; ido
               (ido-first-match
                ,@(if dracula-pro-van-helsing-alternate-mode-line-and-minibuffer
                      (list :weight 'normal :foreground dracula-pro-van-helsing-green)
                    (list :weight 'bold :foreground dracula-pro-van-helsing-pink)))
               (ido-only-match :foreground ,dracula-pro-van-helsing-orange)
               (ido-subdir :foreground ,dracula-pro-van-helsing-yellow)
               (ido-virtual :foreground ,dracula-pro-van-helsing-cyan)
               (ido-incomplete-regexp :inherit font-lock-warning-face)
               (ido-indicator :foreground ,dracula-pro-van-helsing-fg :background ,dracula-pro-van-helsing-pink)
               ;; isearch
               (isearch :inherit match :weight bold)
               (isearch-fail :foreground ,dracula-pro-van-helsing-bg :background ,dracula-pro-van-helsing-orange)
               ;; jde-java
               (jde-java-font-lock-constant-face :foreground ,dracula-pro-van-helsing-cyan)
               (jde-java-font-lock-modifier-face :foreground ,dracula-pro-van-helsing-pink)
               (jde-java-font-lock-number-face :foreground ,dracula-pro-van-helsing-fg)
               (jde-java-font-lock-package-face :foreground ,dracula-pro-van-helsing-fg)
               (jde-java-font-lock-private-face :foreground ,dracula-pro-van-helsing-pink)
               (jde-java-font-lock-public-face :foreground ,dracula-pro-van-helsing-pink)
               ;; js2-mode
               (js2-external-variable :foreground ,dracula-pro-van-helsing-purple)
               (js2-function-param :foreground ,dracula-pro-van-helsing-cyan)
               (js2-jsdoc-html-tag-delimiter :foreground ,dracula-pro-van-helsing-yellow)
               (js2-jsdoc-html-tag-name :foreground ,dracula-pro-van-helsing-alt-blue)
               (js2-jsdoc-value :foreground ,dracula-pro-van-helsing-yellow)
               (js2-private-function-call :foreground ,dracula-pro-van-helsing-cyan)
               (js2-private-member :foreground ,dracula-pro-van-helsing-fg3)
               ;; js3-mode
               (js3-error-face :underline ,dracula-pro-van-helsing-orange)
               (js3-external-variable-face :foreground ,dracula-pro-van-helsing-fg)
               (js3-function-param-face :foreground ,dracula-pro-van-helsing-pink)
               (js3-instance-member-face :foreground ,dracula-pro-van-helsing-cyan)
               (js3-jsdoc-tag-face :foreground ,dracula-pro-van-helsing-pink)
               (js3-warning-face :underline ,dracula-pro-van-helsing-pink)
               ;; magit
               (magit-branch-local :foreground ,dracula-pro-van-helsing-cyan)
               (magit-branch-remote :foreground ,dracula-pro-van-helsing-green)
               (magit-tag :foreground ,dracula-pro-van-helsing-orange)
               (magit-section-heading :foreground ,dracula-pro-van-helsing-pink :weight bold)
               (magit-section-highlight :background ,dracula-pro-van-helsing-bg3 :extend t)
               (magit-diff-context-highlight :background ,dracula-pro-van-helsing-bg3
                                             :foreground ,dracula-pro-van-helsing-fg3
                                             :extend t)
               (magit-diff-revision-summary :foreground ,dracula-pro-van-helsing-orange
                                            :background ,dracula-pro-van-helsing-bg
                                            :weight bold)
               (magit-diff-revision-summary-highlight :foreground ,dracula-pro-van-helsing-orange
                                                      :background ,dracula-pro-van-helsing-bg3
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
               (magit-diff-file-heading :foreground ,dracula-pro-van-helsing-fg)
               (magit-diff-file-heading-highlight :inherit magit-section-highlight)
               (magit-diffstat-added :foreground ,dracula-pro-van-helsing-green)
               (magit-diffstat-removed :foreground ,dracula-pro-van-helsing-red)
               (magit-hash :foreground ,dracula-pro-van-helsing-fg2)
               (magit-hunk-heading :background ,dracula-pro-van-helsing-bg3)
               (magit-hunk-heading-highlight :background ,dracula-pro-van-helsing-bg3)
               (magit-item-highlight :background ,dracula-pro-van-helsing-bg3)
               (magit-log-author :foreground ,dracula-pro-van-helsing-fg3)
               (magit-process-ng :foreground ,dracula-pro-van-helsing-orange :weight bold)
               (magit-process-ok :foreground ,dracula-pro-van-helsing-green :weight bold)
               ;; markdown
               (markdown-blockquote-face :foreground ,dracula-pro-van-helsing-orange)
               (markdown-code-face :foreground ,dracula-pro-van-helsing-orange)
               (markdown-footnote-face :foreground ,dracula-pro-van-helsing-alt-blue)
               (markdown-header-face :weight normal)
               (markdown-header-face-1
                :inherit bold :foreground ,dracula-pro-van-helsing-pink
                ,@(when dracula-pro-van-helsing-enlarge-headings
                    (list :height dracula-pro-van-helsing-height-title-1)))
               (markdown-header-face-2
                :inherit bold :foreground ,dracula-pro-van-helsing-purple
                ,@(when dracula-pro-van-helsing-enlarge-headings
                    (list :height dracula-pro-van-helsing-height-title-2)))
               (markdown-header-face-3
                :foreground ,dracula-pro-van-helsing-green
                ,@(when dracula-pro-van-helsing-enlarge-headings
                    (list :height dracula-pro-van-helsing-height-title-3)))
               (markdown-header-face-4 :foreground ,dracula-pro-van-helsing-yellow)
               (markdown-header-face-5 :foreground ,dracula-pro-van-helsing-cyan)
               (markdown-header-face-6 :foreground ,dracula-pro-van-helsing-orange)
               (markdown-header-face-7 :foreground ,dracula-pro-van-helsing-alt-blue)
               (markdown-header-face-8 :foreground ,dracula-pro-van-helsing-fg)
               (markdown-inline-code-face :foreground ,dracula-pro-van-helsing-yellow)
               (markdown-plain-url-face :inherit link)
               (markdown-pre-face :foreground ,dracula-pro-van-helsing-orange)
               (markdown-table-face :foreground ,dracula-pro-van-helsing-purple)
               ;; message
               (message-mml :foreground ,dracula-pro-van-helsing-green :weight normal)
               (message-header-xheader :foreground ,dracula-pro-van-helsing-cyan :weight normal)
               ;; mode-line
               (mode-line :background ,dracula-pro-van-helsing-current
                          :box ,dracula-pro-van-helsing-current :inverse-video nil
                          ,@(if dracula-pro-van-helsing-alternate-mode-line-and-minibuffer
                                (list :foreground dracula-pro-van-helsing-fg3)
                              (list :foreground nil)))
               (mode-line-inactive
                :inverse-video nil
                ,@(if dracula-pro-van-helsing-alternate-mode-line-and-minibuffer
                      (list :foreground dracula-pro-van-helsing-comment :background dracula-pro-van-helsing-bg
                            :box dracula-pro-van-helsing-bg)
                    (list :foreground dracula-pro-van-helsing-fg :background dracula-pro-van-helsing-bg2 :box dracula-pro-van-helsing-bg2)))
               ;; mu4e
               (mu4e-unread-face :foreground ,dracula-pro-van-helsing-pink :weight normal)
               (mu4e-view-url-number-face :foreground ,dracula-pro-van-helsing-purple)
               (mu4e-highlight-face :background ,dracula-pro-van-helsing-bg
                                    :foreground ,dracula-pro-van-helsing-yellow
                                    :extend t)
               (mu4e-header-highlight-face :background ,dracula-pro-van-helsing-current
                                           :foreground ,dracula-pro-van-helsing-fg
                                           :underline nil :weight bold
                                           :extend t)
               (mu4e-header-key-face :inherit message-mml)
               (mu4e-header-marks-face :foreground ,dracula-pro-van-helsing-purple)
               (mu4e-cited-1-face :foreground ,dracula-pro-van-helsing-purple)
               (mu4e-cited-2-face :foreground ,dracula-pro-van-helsing-orange)
               (mu4e-cited-3-face :foreground ,dracula-pro-van-helsing-comment)
               (mu4e-cited-4-face :foreground ,dracula-pro-van-helsing-fg2)
               (mu4e-cited-5-face :foreground ,dracula-pro-van-helsing-fg3)
               ;; org
               (org-agenda-date :foreground ,dracula-pro-van-helsing-cyan :underline nil)
               (org-agenda-dimmed-todo-face :foreground ,dracula-pro-van-helsing-comment)
               (org-agenda-done :foreground ,dracula-pro-van-helsing-green)
               (org-agenda-structure :foreground ,dracula-pro-van-helsing-purple)
               (org-block :foreground ,dracula-pro-van-helsing-orange)
               (org-code :foreground ,dracula-pro-van-helsing-yellow)
               (org-column :background ,dracula-pro-van-helsing-bg4)
               (org-column-title :inherit org-column :weight bold :underline t)
               (org-date :foreground ,dracula-pro-van-helsing-cyan :underline t)
               (org-document-info :foreground ,dracula-pro-van-helsing-alt-blue)
               (org-document-info-keyword :foreground ,dracula-pro-van-helsing-comment)
               (org-document-title :weight bold :foreground ,dracula-pro-van-helsing-orange
                                   ,@(when dracula-pro-van-helsing-enlarge-headings
                                       (list :height dracula-pro-van-helsing-height-doc-title)))
               (org-done :foreground ,dracula-pro-van-helsing-green)
               (org-ellipsis :foreground ,dracula-pro-van-helsing-comment)
               (org-footnote :foreground ,dracula-pro-van-helsing-alt-blue)
               (org-formula :foreground ,dracula-pro-van-helsing-pink)
               (org-headline-done :foreground ,dracula-pro-van-helsing-comment
                                  :weight normal :strike-through t)
               (org-hide :foreground ,dracula-pro-van-helsing-bg :background ,dracula-pro-van-helsing-bg)
               (org-level-1 :inherit bold :foreground ,dracula-pro-van-helsing-pink
                            ,@(when dracula-pro-van-helsing-enlarge-headings
                                (list :height dracula-pro-van-helsing-height-title-1)))
               (org-level-2 :inherit bold :foreground ,dracula-pro-van-helsing-purple
                            ,@(when dracula-pro-van-helsing-enlarge-headings
                                (list :height dracula-pro-van-helsing-height-title-2)))
               (org-level-3 :weight normal :foreground ,dracula-pro-van-helsing-green
                            ,@(when dracula-pro-van-helsing-enlarge-headings
                                (list :height dracula-pro-van-helsing-height-title-3)))
               (org-level-4 :weight normal :foreground ,dracula-pro-van-helsing-yellow)
               (org-level-5 :weight normal :foreground ,dracula-pro-van-helsing-cyan)
               (org-level-6 :weight normal :foreground ,dracula-pro-van-helsing-orange)
               (org-level-7 :weight normal :foreground ,dracula-pro-van-helsing-alt-blue)
               (org-level-8 :weight normal :foreground ,dracula-pro-van-helsing-fg)
               (org-link :foreground ,dracula-pro-van-helsing-cyan :underline t)
               (org-priority :foreground ,dracula-pro-van-helsing-cyan)
               (org-scheduled :foreground ,dracula-pro-van-helsing-green)
               (org-scheduled-previously :foreground ,dracula-pro-van-helsing-yellow)
               (org-scheduled-today :foreground ,dracula-pro-van-helsing-green)
               (org-sexp-date :foreground ,dracula-pro-van-helsing-fg4)
               (org-special-keyword :foreground ,dracula-pro-van-helsing-yellow)
               (org-table :foreground ,dracula-pro-van-helsing-purple)
               (org-tag :foreground ,dracula-pro-van-helsing-pink :weight bold :background ,dracula-pro-van-helsing-bg2)
               (org-todo :foreground ,dracula-pro-van-helsing-orange :weight bold :background ,dracula-pro-van-helsing-bg2)
               (org-upcoming-deadline :foreground ,dracula-pro-van-helsing-yellow)
               (org-warning :weight bold :foreground ,dracula-pro-van-helsing-pink)
               ;; outline
               (outline-1 :foreground ,dracula-pro-van-helsing-pink)
               (outline-2 :foreground ,dracula-pro-van-helsing-purple)
               (outline-3 :foreground ,dracula-pro-van-helsing-green)
               (outline-4 :foreground ,dracula-pro-van-helsing-yellow)
               (outline-5 :foreground ,dracula-pro-van-helsing-cyan)
               (outline-6 :foreground ,dracula-pro-van-helsing-orange)
               ;; powerline
               (powerline-evil-base-face :foreground ,dracula-pro-van-helsing-bg2)
               (powerline-evil-emacs-face :inherit powerline-evil-base-face :background ,dracula-pro-van-helsing-yellow)
               (powerline-evil-insert-face :inherit powerline-evil-base-face :background ,dracula-pro-van-helsing-cyan)
               (powerline-evil-motion-face :inherit powerline-evil-base-face :background ,dracula-pro-van-helsing-purple)
               (powerline-evil-normal-face :inherit powerline-evil-base-face :background ,dracula-pro-van-helsing-green)
               (powerline-evil-operator-face :inherit powerline-evil-base-face :background ,dracula-pro-van-helsing-pink)
               (powerline-evil-replace-face :inherit powerline-evil-base-face :background ,dracula-pro-van-helsing-red)
               (powerline-evil-visual-face :inherit powerline-evil-base-face :background ,dracula-pro-van-helsing-orange)
               ;; rainbow-delimiters
               (rainbow-delimiters-depth-1-face :foreground ,dracula-pro-van-helsing-fg)
               (rainbow-delimiters-depth-2-face :foreground ,dracula-pro-van-helsing-cyan)
               (rainbow-delimiters-depth-3-face :foreground ,dracula-pro-van-helsing-purple)
               (rainbow-delimiters-depth-4-face :foreground ,dracula-pro-van-helsing-pink)
               (rainbow-delimiters-depth-5-face :foreground ,dracula-pro-van-helsing-orange)
               (rainbow-delimiters-depth-6-face :foreground ,dracula-pro-van-helsing-green)
               (rainbow-delimiters-depth-7-face :foreground ,dracula-pro-van-helsing-yellow)
               (rainbow-delimiters-depth-8-face :foreground ,dracula-pro-van-helsing-alt-blue)
               (rainbow-delimiters-unmatched-face :foreground ,dracula-pro-van-helsing-orange)
               ;; rpm-spec
               (rpm-spec-dir-face :foreground ,dracula-pro-van-helsing-green)
               (rpm-spec-doc-face :foreground ,dracula-pro-van-helsing-pink)
               (rpm-spec-ghost-face :foreground ,dracula-pro-van-helsing-purple)
               (rpm-spec-macro-face :foreground ,dracula-pro-van-helsing-yellow)
               (rpm-spec-obsolete-tag-face :inherit font-lock-warning-face)
               (rpm-spec-package-face :foreground ,dracula-pro-van-helsing-purple)
               (rpm-spec-section-face :foreground ,dracula-pro-van-helsing-yellow)
               (rpm-spec-tag-face :foreground ,dracula-pro-van-helsing-cyan)
               (rpm-spec-var-face :foreground ,dracula-pro-van-helsing-orange)
               ;; show-paren
               (show-paren-match-face :background unspecified
                                      :foreground ,dracula-pro-van-helsing-cyan
                                      :weight bold)
               (show-paren-match :background unspecified
                                 :foreground ,dracula-pro-van-helsing-cyan
                                 :weight bold)
               (show-paren-match-expression :inherit match)
               (show-paren-mismatch :inherit font-lock-warning-face)
               ;; slime
               (slime-repl-inputed-output-face :foreground ,dracula-pro-van-helsing-purple)
               ;; spam
               (spam :inherit gnus-summary-normal-read :foreground ,dracula-pro-van-helsing-orange
                     :strike-through t :slant oblique)
               ;; tab-bar & tab-line (since Emacs 27.1)
               (tab-bar :foreground ,dracula-pro-van-helsing-purple :background ,dracula-pro-van-helsing-current
                        :inherit variable-pitch)
               (tab-bar-tab :foreground ,dracula-pro-van-helsing-pink :background ,dracula-pro-van-helsing-bg
                            :box (:line-width 2 :color ,dracula-pro-van-helsing-bg :style nil))
               (tab-bar-tab-inactive :foreground ,dracula-pro-van-helsing-purple :background ,dracula-pro-van-helsing-bg2
                                     :box (:line-width 2 :color ,dracula-pro-van-helsing-bg2 :style nil))
               (tab-line :foreground ,dracula-pro-van-helsing-purple :background ,dracula-pro-van-helsing-current
                         :height 0.9 :inherit variable-pitch)
               (tab-line-tab :foreground ,dracula-pro-van-helsing-pink :background ,dracula-pro-van-helsing-bg
                             :box (:line-width 2 :color ,dracula-pro-van-helsing-bg :style nil))
               (tab-line-tab-inactive :foreground ,dracula-pro-van-helsing-purple :background ,dracula-pro-van-helsing-bg2
                                      :box (:line-width 2 :color ,dracula-pro-van-helsing-bg2 :style nil))
               (tab-line-tab-current :inherit tab-line-tab)
               (tab-line-close-highlight :foreground ,dracula-pro-van-helsing-red)
               ;; term
               (term :foreground ,dracula-pro-van-helsing-fg :background ,dracula-pro-van-helsing-bg)
               (term-color-black :foreground ,dracula-pro-van-helsing-bg :background ,dracula-pro-van-helsing-bg)
               (term-color-blue :foreground ,dracula-pro-van-helsing-purple :background ,dracula-pro-van-helsing-purple)
               (term-color-cyan :foreground ,dracula-pro-van-helsing-cyan :background ,dracula-pro-van-helsing-cyan)
               (term-color-green :foreground ,dracula-pro-van-helsing-green :background ,dracula-pro-van-helsing-green)
               (term-color-magenta :foreground ,dracula-pro-van-helsing-pink :background ,dracula-pro-van-helsing-pink)
               (term-color-red :foreground ,dracula-pro-van-helsing-red :background ,dracula-pro-van-helsing-red)
               (term-color-white :foreground ,dracula-pro-van-helsing-fg :background ,dracula-pro-van-helsing-fg)
               (term-color-yellow :foreground ,dracula-pro-van-helsing-yellow :background ,dracula-pro-van-helsing-yellow)
               ;; undo-tree
               (undo-tree-visualizer-current-face :foreground ,dracula-pro-van-helsing-orange)
               (undo-tree-visualizer-default-face :foreground ,dracula-pro-van-helsing-fg2)
               (undo-tree-visualizer-register-face :foreground ,dracula-pro-van-helsing-purple)
               (undo-tree-visualizer-unmodified-face :foreground ,dracula-pro-van-helsing-fg)
               ;; web-mode
               (web-mode-builtin-face :inherit ,font-lock-builtin-face)
               (web-mode-comment-face :inherit ,font-lock-comment-face)
               (web-mode-constant-face :inherit ,font-lock-constant-face)
               (web-mode-doctype-face :inherit ,font-lock-comment-face)
               (web-mode-function-name-face :inherit ,font-lock-function-name-face)
               (web-mode-html-attr-name-face :foreground ,dracula-pro-van-helsing-purple)
               (web-mode-html-attr-value-face :foreground ,dracula-pro-van-helsing-green)
               (web-mode-html-tag-face :foreground ,dracula-pro-van-helsing-pink :weight bold)
               (web-mode-keyword-face :foreground ,dracula-pro-van-helsing-pink)
               (web-mode-string-face :foreground ,dracula-pro-van-helsing-yellow)
               (web-mode-type-face :inherit ,font-lock-type-face)
               (web-mode-warning-face :inherit ,font-lock-warning-face)
               ;; which-func
               (which-func :inherit ,font-lock-function-name-face)
               ;; whitespace
               (whitespace-big-indent :background ,dracula-pro-van-helsing-red :foreground ,dracula-pro-van-helsing-red)
               (whitespace-empty :background ,dracula-pro-van-helsing-orange :foreground ,dracula-pro-van-helsing-red)
               (whitespace-hspace :background ,dracula-pro-van-helsing-bg3 :foreground ,dracula-pro-van-helsing-comment)
               (whitespace-indentation :background ,dracula-pro-van-helsing-orange :foreground ,dracula-pro-van-helsing-red)
               (whitespace-line :background ,dracula-pro-van-helsing-bg :foreground ,dracula-pro-van-helsing-pink)
               (whitespace-newline :foreground ,dracula-pro-van-helsing-comment)
               (whitespace-space :background ,dracula-pro-van-helsing-bg :foreground ,dracula-pro-van-helsing-comment)
               (whitespace-space-after-tab :background ,dracula-pro-van-helsing-orange :foreground ,dracula-pro-van-helsing-red)
               (whitespace-space-before-tab :background ,dracula-pro-van-helsing-orange :foreground ,dracula-pro-van-helsing-red)
               (whitespace-tab :background ,dracula-pro-van-helsing-bg2 :foreground ,dracula-pro-van-helsing-comment)
               (whitespace-trailing :inherit trailing-whitespace)
               ;; yard-mode
               (yard-tag-face :inherit ,font-lock-builtin-face)
               (yard-directive-face :inherit ,font-lock-builtin-face))))

  (apply #'custom-theme-set-faces
         'dracula-pro-van-helsing
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

(provide-theme 'dracula-pro-van-helsing)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:

;;; dracula-pro-van-helsing-theme.el ends here