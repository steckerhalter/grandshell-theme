;;; grandshell-theme.el --- Grand Shell color theme for Emacs > 24

;; Copyright 2026, Steckerhalter

;; Author: steckerhalter
;; Version: 1.5
;; Package-Origin: (grandshell-theme :url "https://github.com/steckerhalter/grandshell-theme")
;; Keywords: color theme grand shell faces
;; URL: https://framagit.org/steckerhalter/grandshell-theme

;; This file is not part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; Dark color theme for Emacs with intensive colors. The theme
;; structure has been borrowed from color-theme-sanityinc-solarized
;; URL: https://github.com/purcell/color-theme-sanityinc-solarized by
;; Steve Purcell.

;;; Requirements:

;; Emacs 24.

;;; Code:

(deftheme grandshell "Grand Shell, a dark theme for Emacs24+")

;;;; color definitions
(let ((class '((class color) (min-colors 89)))
      (background "#050505")
      (alt-background "#222")
      (strong "#eee")
      (bright "#eee")
      (normal "#ccc")
      (faint "#888")
      (dark "#888")
      (faintest "#333")
      (very-dark "#333")
      (darkest "black")
      (contrast-background "#331133")
      (red-brightest "#ffbbbb")
      (red-bright "#f25a5a")
      (red "red")
      (red-dark "#5a0000")
      (red-darkest "#1a0000")
      (pink-brightest "#ffbfd7")
      (pink-brighter "#ff8fb7")
      (pink "#ff5f87")
      (pink-darker "#aa2255")
      (orange "#efc334")
      (morange "#EF8534")
      (yellow "#f6df92")
      (yellow-darker "#a86")
      (yellow-dark "#643")
      (green-bright "#dcf692")
      (green "#acfb5a")
      (green-darker "#77bb33")
      (cyan "#5af2ee")
      (turquoise "#3affa3")
      (malachite "#3aff83")
      (malachite-dark "#19703A")
      (blue-bright "#dcdff2")
      (blue "#b2baf6")
      (blue-darker "#5555dd")
      (magenta-bright "#f09fff")
      (magenta "#c350ff")
      (magenta-dark "#34004A")
      (magenta-darkest "#1B0026")
      (violet "#78537A")
      (violet-darkest "#110011")
      (violet-red "#d020a7"))

  (custom-theme-set-faces
   'grandshell

;;;; standard faces
   `(default ((,class (:foreground ,normal :background ,background))))
   `(bold ((,class (:weight bold))))
   `(italic ((,class (:slant italic))))
   `(bold-italic ((,class (:slant italic :weight bold))))
   `(underline ((,class (:underline t))))
   `(shadow ((,class (:foreground ,normal))))
   `(link ((,class (:foreground ,turquoise :underline t))))

   `(highlight ((,class (:inverse-video nil :background ,alt-background))))
   `(isearch ((,class (:foreground ,yellow :background ,background :inverse-video t))))
   `(isearch-fail ((,class (:background ,background :inherit font-lock-warning-face :inverse-video t))))
   `(match ((,class (:foreground ,blue :background ,background :inverse-video t))))
   `(lazy-highlight ((,class (:foreground ,cyan :background ,background :inverse-video t))))
   `(region ((,class (:background ,magenta-dark))))
   `(secondary-selection ((,class (:background ,alt-background))))
   `(trailing-whitespace ((,class (:background ,red :underline nil))))

   `(mode-line ((t (:foreground ,strong :background ,contrast-background))))
   `(mode-line-inactive ((t (:foreground ,yellow-dark :background ,violet-darkest :weight light :box nil :inherit (mode-line )))))
   `(mode-line-buffer-id ((t (:foreground ,yellow))))
   `(mode-line-emphasis ((,class (:foreground ,magenta))))
   `(which-func ((,class (:foreground ,blue :background nil :weight bold))))

   `(header-line ((,class (:inherit mode-line :foreground ,magenta :background nil))))
   `(minibuffer-prompt ((,class (:foreground ,blue))))
   `(fringe ((,class (:background ,alt-background))))
   `(cursor ((,class (:background ,green))))
   `(border ((,class (:background ,alt-background))))
   `(widget-button ((,class (:underline t))))
   `(widget-field ((,class (:background ,alt-background :box (:line-width 1 :color ,normal)))))

   `(success ((,class (:foreground ,green))))
   `(warning ((,class (:foreground ,orange))))
   `(error ((,class (:foreground ,red))))

   `(show-paren-match ((,class (:foreground "#FFE200" :background nil :slant italic :weight bold))))
   `(show-paren-mismatch ((,class (:background ,background :inherit font-lock-warning-face :inverse-video t))))

   `(custom-variable-tag ((,class (:foreground ,blue))))
   `(custom-group-tag ((,class (:foreground ,blue))))
   `(custom-state-tag ((,class (:foreground ,green))))

;;;; font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,blue))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,yellow))))
   `(font-lock-comment-face ((,class (:foreground ,orange))))
   `(font-lock-constant-face ((,class (:foreground ,malachite))))
   `(font-lock-doc-face ((,class (:foreground ,magenta))))
   `(font-lock-doc-string-face ((,class (:foreground ,yellow))))
   `(font-lock-function-name-face ((,class (:foreground ,magenta-bright))))
   `(font-lock-keyword-face ((,class (:foreground ,cyan))))
   `(font-lock-negation-char-face ((,class (:foreground ,green))))
   `(font-lock-preprocessor-face ((,class (:foreground ,violet-red))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,cyan))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,magenta))))
   `(font-lock-string-face ((,class (:foreground ,pink))))
   `(font-lock-type-face ((,class (:foreground ,blue))))
   `(font-lock-variable-name-face ((,class (:foreground ,yellow))))
   `(font-lock-warning-face ((,class (:weight bold :foreground ,red-bright))))

;;;; mode faces
   `(csv-separator-face ((,class (:foreground ,yellow))))
   `(border-glyph ((,class (nil))))
   `(gui-element ((,class (:background ,alt-background :foreground ,normal))))
   `(hl-sexp-face ((,class (:background ,alt-background))))
   `(highlight-80+ ((,class (:background ,alt-background))))
   `(rng-error-face ((,class (:underline ,red))))
   `(py-builtins-face ((,class (:foreground ,orange :weight normal))))

;;;;; auto-complete
   `(ac-completion-face ((,class (:foreground ,bright :underline t))))
   `(ac-candidate-face ((,class (:background ,magenta-darkest :foreground ,bright))))
   `(ac-selection-face ((,class (:background ,magenta :foreground ,darkest))))
   `(ac-yasnippet-candidate-face ((,class (:background ,pink-darker :foreground ,darkest))))
   `(ac-yasnippet-selection-face ((,class (:background ,pink :foreground ,darkest))))

;;;;; auto-dim-other-buffers
   `(auto-dim-other-buffers-face ((,class (:background "#0c0c0c"))))

;;;;; clojure
   `(clojure-test-failure-face ((,class (:background nil :inherit flymake-warnline))))
   `(clojure-test-error-face ((,class (:background nil :inherit flymake-errline))))
   `(clojure-test-success-face ((,class (:background nil :foreground nil :underline ,green))))
   `(clojure-keyword ((,class (:foreground ,yellow))))
   `(clojure-parens ((,class (:foreground ,strong))))
   `(clojure-braces ((,class (:foreground ,green))))
   `(clojure-brackets ((,class (:foreground ,yellow))))
   `(clojure-double-quote ((,class (:foreground ,cyan :background nil))))
   `(clojure-special ((,class (:foreground ,blue))))
   `(clojure-java-call ((,class (:foreground ,magenta))))

;;;;; company
   `(company-preview ((,class (:foreground ,bright))))
   `(company-preview-common ((,class (:foreground ,bright :underline t))))
   `(company-preview-search ((,class (:foreground ,darkest :background ,yellow))))
   `(company-tooltip ((,class (:background ,magenta-darkest  :foreground ,normal))))
   `(company-tooltip-common ((,class (:inherit company-tooltip :foreground ,bright))))
   `(company-tooltip-common-selection ((,class (:inherit company-tooltip-selection))))
   `(company-tooltip-selection ((,class (:background ,magenta :foreground ,darkest))))
   `(company-scrollbar-bg ((,class (:background ,yellow-dark))))
   `(company-scrollbar-fg ((,class (:background ,yellow))))

;;;;; compilation
   `(compilation-column-number ((,class (:foreground ,yellow))))
   `(compilation-line-number ((,class (:foreground ,yellow))))
   `(compilation-message-face ((,class (:foreground ,blue))))
   `(compilation-mode-line-exit ((,class (:foreground ,green))))
   `(compilation-mode-line-fail ((,class (:foreground ,red))))
   `(compilation-mode-line-run ((,class (:foreground ,blue))))
   `(compilation-info ((,class (:foreground ,turquoise))))

;;;;; diff
   `(diff-added ((,class (:foreground ,green))))
   `(diff-changed ((,class (:foreground ,violet))))
   `(diff-removed ((,class (:foreground ,orange))))
   `(diff-header ((,class (:foreground ,cyan :background nil))))
   `(diff-file-header ((,class (:foreground ,blue :background nil))))
   `(diff-hunk-header ((,class (:foreground ,magenta))))
   `(diff-refine-removed ((,class (:inherit magit-diff-removed-highlight :foreground ,red-brightest))))
   `(diff-refine-added ((,class (:inherit magit-diff-added-highlight :foreground ,blue-bright))))

;;;;; diff-hl
   `(diff-hl-change ((,class (:foreground ,blue :background ,blue-darker))))
   `(diff-hl-delete ((,class (:foreground ,pink :background ,pink-darker))))
   `(diff-hl-insert ((,class (:foreground ,green :background ,green-darker))))

;;;;; dired+
   `(diredp-compressed-file-suffix ((,class (:foreground ,orange))))
   `(diredp-date-time ((,class (:foreground ,yellow))))
   `(diredp-deletion ((,class (:foreground ,red-bright :weight bold :slant italic))))
   `(diredp-deletion-file-name ((,class (:foreground ,red-bright :underline t))))
   `(diredp-dir-heading ((,class (:foreground ,pink :underline t :weight bold))))
   `(diredp-dir-priv ((,class (:foreground ,magenta :background nil))))
   `(diredp-exec-priv ((,class (:foreground ,green-bright :background nil))))
   `(diredp-executable-tag ((,class (:foreground ,green-bright :background nil))))
   `(diredp-file-name ((,class (:foreground ,normal))))
   `(diredp-file-suffix ((,class (:foreground ,cyan))))
   `(diredp-flag-mark ((,class (:foreground ,red-bright :weight bold))))
   `(diredp-flag-mark-line ((,class (:inherit highlight))))
   `(diredp-ignored-file-name ((,class (:foreground ,dark))))
   `(diredp-link-priv ((,class (:background nil :foreground ,pink))))
   `(diredp-mode-line-flagged ((,class (:foreground ,orange))))
   `(diredp-mode-line-marked ((,class (:foreground ,magenta-bright))))
   `(diredp-no-priv ((,class (:foreground ,dark :background nil))))
   `(diredp-number ((,class (:foreground ,orange))))
   `(diredp-other-priv ((,class (:background nil :foreground ,orange))))
   `(diredp-rare-priv ((,class (:foreground ,red :background nil))))
   `(diredp-read-priv ((,class (:foreground ,blue :background nil))))
   `(diredp-symlink ((,class (:foreground ,pink))))
   `(diredp-write-priv ((,class (:foreground ,magenta-bright :background nil))))

;;;;; ediff
   `(ediff-even-diff-A ((,class (:foreground nil :background nil :inverse-video t))))
   `(ediff-even-diff-B ((,class (:foreground nil :background nil :inverse-video t))))
   `(ediff-odd-diff-A  ((,class (:foreground ,faint :background nil :inverse-video t))))
   `(ediff-odd-diff-B  ((,class (:foreground ,faint :background nil :inverse-video t))))

;;;;; eldoc
   `(eldoc-highlight-function-argument ((,class (:foreground ,green :weight bold))))

;;;;; elfeed
   `(elfeed-search-date-face ((,class (:foreground ,yellow-darker))))
   `(elfeed-search-feed-face ((,class (:foreground ,magenta))))
   `(elfeed-search-tag-face ((,class (:foreground ,pink))))
   `(elfeed-search-title-face ((,class (:foreground ,yellow))))
   `(elfeed-log-error-level-face ((t (:foreground ,red))))
   `(elfeed-log-info-level-face ((t (:foreground ,blue))))
   `(elfeed-log-warn-level-face ((t (:foreground ,yellow))))

;;;;; erb
   `(erb-delim-face ((,class (:background ,alt-background))))
   `(erb-exec-face ((,class (:background ,alt-background :weight bold))))
   `(erb-exec-delim-face ((,class (:background ,alt-background))))
   `(erb-out-face ((,class (:background ,alt-background :weight bold))))
   `(erb-out-delim-face ((,class (:background ,alt-background))))
   `(erb-comment-face ((,class (:background ,alt-background :weight bold :slant italic))))
   `(erb-comment-delim-face ((,class (:background ,alt-background))))

;;;;; erc
   `(erc-direct-msg-face ((,class (:foreground ,yellow))))
   `(erc-error-face ((,class (:foreground ,red))))
   `(erc-header-face ((,class (:foreground ,strong :background ,alt-background))))
   `(erc-input-face ((,class (:foreground ,yellow))))
   `(erc-current-nick-face ((,class (:foreground ,blue :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,blue))))
   `(erc-nick-default-face ((,class (:weight normal :foreground ,violet))))
   `(erc-nick-msg-face ((,class (:weight normal :foreground ,yellow))))
   `(erc-notice-face ((,class (:foreground ,faintest))))
   `(erc-pal-face ((,class (:foreground ,orange))))
   `(erc-prompt-face ((,class (:foreground ,blue))))
   `(erc-timestamp-face ((,class (:foreground ,cyan))))
   `(erc-keyword-face ((,class (:foreground ,green))))

;;;;; eshell
   `(eshell-ls-archive ((,class (:foreground ,cyan :weight normal))))
   `(eshell-ls-backup ((,class (:foreground ,yellow-darker))))
   `(eshell-ls-clutter ((,class (:foreground ,orange :weight normal))))
   `(eshell-ls-directory ((,class (:foreground ,blue :weight normal))))
   `(eshell-ls-executable ((,class (:foreground ,turquoise :weight normal))))
   `(eshell-ls-missing ((,class (:foreground ,pink :weight normal))))
   `(eshell-ls-product ((,class (:foreground ,yellow))))
   `(eshell-ls-readonly ((,class (:foreground ,faint))))
   `(eshell-ls-special ((,class (:foreground ,green :weight normal))))
   `(eshell-ls-symlink ((,class (:foreground ,magenta-bright :weight normal))))
   `(eshell-ls-unreadable ((,class (:foreground ,violet))))
   `(eshell-prompt ((,class (:foreground ,yellow :weight normal))))

;;;;; eval-sexp-fu
   `(eval-sexp-fu-flash ((,class (:background ,magenta-dark))))

;;;;; eww
   `(eww-valid-certificate ((,class (:background ,malachite-dark, :foreground ,malachite :weight bold))))
   `(eww-invalid-certificate ((,class (:background ,red-dark :foreground ,red :weight bold))))

;;;;; fic-mode
   `(font-lock-fic-face ((,class (:background ,red :foreground ,red-darkest :weight bold))))

;;;;; flycheck
   `(flycheck-error-face ((t (:foreground ,red :background ,red-darkest :weight bold))))
   `(flycheck-error ((,class (:underline (:color ,red)))))
   `(flycheck-warning ((,class (:underline (:color ,orange)))))

;;;;; flymake
   `(flymake-warnline ((,class (:underline ,orange :background ,background))))
   `(flymake-errline ((,class (:underline ,red :background ,background))))

;;;;; git-gutter
   `(git-gutter:modified ((,class (:foreground ,violet :weight bold))))
   `(git-gutter:added ((,class (:foreground ,green :weight bold))))
   `(git-gutter:deleted ((,class (:foreground ,red :weight bold))))
   `(git-gutter:unchanged ((,class (:background ,yellow))))

;;;;; git-gutter-fringe
   `(git-gutter-fr:modified ((,class (:foreground ,violet :weight bold))))
   `(git-gutter-fr:added ((,class (:foreground ,green :weight bold))))
   `(git-gutter-fr:deleted ((,class (:foreground ,red :weight bold))))

;;;;; gnus
   `(gnus-cite-1 ((,class (:inherit outline-1 :foreground nil))))
   `(gnus-cite-2 ((,class (:inherit outline-2 :foreground nil))))
   `(gnus-cite-3 ((,class (:inherit outline-3 :foreground nil))))
   `(gnus-cite-4 ((,class (:inherit outline-4 :foreground nil))))
   `(gnus-cite-5 ((,class (:inherit outline-5 :foreground nil))))
   `(gnus-cite-6 ((,class (:inherit outline-6 :foreground nil))))
   `(gnus-cite-7 ((,class (:inherit outline-7 :foreground nil))))
   `(gnus-cite-8 ((,class (:inherit outline-8 :foreground nil))))
   `(gnus-header-content ((,class (:inherit message-header-other))))
   `(gnus-header-subject ((,class (:inherit message-header-subject))))
   `(gnus-header-from ((,class (:inherit message-header-other-face :weight bold :foreground ,orange))))
   `(gnus-header-name ((,class (:inherit message-header-name))))
   `(gnus-button ((,class (:inherit link :foreground nil))))
   `(gnus-signature ((,class (:inherit font-lock-comment-face))))
   `(gnus-summary-normal-unread ((,class (:foreground ,strong :weight normal))))
   `(gnus-summary-normal-read ((,class (:foreground ,normal :weight normal))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,cyan :weight normal))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,orange :weight normal))))
   `(gnus-summary-low-unread ((,class (:foreground ,faint :weight normal))))
   `(gnus-summary-low-read ((,class (:foreground ,faintest :weight normal))))
   `(gnus-summary-low-ancient ((,class (:foreground ,faintest :weight normal))))
   `(gnus-summary-high-unread ((,class (:foreground ,yellow :weight normal))))
   `(gnus-summary-high-read ((,class (:foreground ,green :weight normal))))
   `(gnus-summary-high-ancient ((,class (:foreground ,green :weight normal))))
   `(gnus-summary-high-ticked ((,class (:foreground ,orange :weight normal))))
   `(gnus-summary-cancelled ((,class (:foreground ,red :background nil :weight normal))))
   `(gnus-group-mail-low ((,class (:foreground ,faintest))))
   `(gnus-group-mail-low-empty ((,class (:foreground ,faintest))))
   `(gnus-group-mail-1 ((,class (:foreground nil :weight normal :inherit outline-1))))
   `(gnus-group-mail-2 ((,class (:foreground nil :weight normal :inherit outline-2))))
   `(gnus-group-mail-3 ((,class (:foreground nil :weight normal :inherit outline-3))))
   `(gnus-group-mail-4 ((,class (:foreground nil :weight normal :inherit outline-4))))
   `(gnus-group-mail-5 ((,class (:foreground nil :weight normal :inherit outline-5))))
   `(gnus-group-mail-6 ((,class (:foreground nil :weight normal :inherit outline-6))))
   `(gnus-group-mail-1-empty ((,class (:inherit gnus-group-mail-1 :foreground ,faint))))
   `(gnus-group-mail-2-empty ((,class (:inherit gnus-group-mail-2 :foreground ,faint))))
   `(gnus-group-mail-3-empty ((,class (:inherit gnus-group-mail-3 :foreground ,faint))))
   `(gnus-group-mail-4-empty ((,class (:inherit gnus-group-mail-4 :foreground ,faint))))
   `(gnus-group-mail-5-empty ((,class (:inherit gnus-group-mail-5 :foreground ,faint))))
   `(gnus-group-mail-6-empty ((,class (:inherit gnus-group-mail-6 :foreground ,faint))))
   `(gnus-group-news-1 ((,class (:foreground nil :weight normal :inherit outline-5))))
   `(gnus-group-news-2 ((,class (:foreground nil :weight normal :inherit outline-6))))
   `(gnus-group-news-3 ((,class (:foreground nil :weight normal :inherit outline-7))))
   `(gnus-group-news-4 ((,class (:foreground nil :weight normal :inherit outline-8))))
   `(gnus-group-news-5 ((,class (:foreground nil :weight normal :inherit outline-1))))
   `(gnus-group-news-6 ((,class (:foreground nil :weight normal :inherit outline-2))))
   `(gnus-group-news-1-empty ((,class (:inherit gnus-group-news-1 :foreground ,faint))))
   `(gnus-group-news-2-empty ((,class (:inherit gnus-group-news-2 :foreground ,faint))))
   `(gnus-group-news-3-empty ((,class (:inherit gnus-group-news-3 :foreground ,faint))))
   `(gnus-group-news-4-empty ((,class (:inherit gnus-group-news-4 :foreground ,faint))))
   `(gnus-group-news-5-empty ((,class (:inherit gnus-group-news-5 :foreground ,faint))))
   `(gnus-group-news-6-empty ((,class (:inherit gnus-group-news-6 :foreground ,faint))))

;;;;; grep
   `(grep-context-face ((,class (:foreground ,faint))))
   `(grep-error-face ((,class (:foreground ,red :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,blue))))
   `(grep-match-face ((,class (:foreground nil :background nil :inherit match))))

;;;;; hackernews
   `(hackernews-link ((,class (:foreground ,morange))))
   `(hackernews-comment-count ((,class (:foreground ,yellow-dark))))
   `(hackernews-score ((,class (:foreground ,yellow-darker))))

;;;;; helm
   `(helm-M-x-key ((,class (:foreground ,pink :underline t))))
   `(helm-buffer-size ((,class (:foreground ,orange))))
   `(helm-buffer-not-saved ((,class (:foreground ,orange))))
   `(helm-buffer-saved-out ((,class (:foreground ,red :background ,background :inverse-video t))))
   `(helm-candidate-number ((,class (:background ,background :foreground ,yellow :bold t))))
   `(helm-visible-mark ((,class (:background ,faintest :foreground ,magenta :bold t))))
   `(helm-header ((,class (:inherit header-line))))
   `(helm-selection ((,class (:background ,faintest :underline t))))
   `(helm-selection-line ((,class (:background ,normal :foreground ,yellow :underline nil))))
   `(helm-separator ((,class (:foreground ,red))))
   `(helm-source-header ((,class (:background ,background, :foreground ,pink, :underline t, :weight bold))))
   `(helm-ff-directory ((t (:foreground ,magenta))))
   `(helm-ff-symlink ((t (:foreground ,yellow))))
   `(helm-buffer-directory ((t (:foreground ,magenta))))
   `(helm-match ((t (:foreground ,yellow))))
   `(helm-ff-prefix ((t (:foreground ,yellow :weight bold))))

;;;;; highlight-symbol
   `(highlight-symbol-face ((,class (:background ,faintest))))

;;;;; icomplete
   `(icomplete-first-match ((,class (:foreground "white" :bold t))))

;;;;; ido
   `(ido-subdir ((,class (:foreground ,magenta))))
   `(ido-first-match ((,class (:foreground ,yellow))))
   `(ido-only-match ((,class (:foreground ,green))))
   `(ido-indicator ((,class (:foreground ,red :background ,background))))
   `(ido-virtual ((,class (:foreground ,faintest))))

;;;;; jabber
   `(jabber-chat-prompt-local ((,class (:foreground ,yellow))))
   `(jabber-chat-prompt-foreign ((,class (:foreground ,orange))))
   `(jabber-chat-prompt-system ((,class (:foreground ,yellow :weight bold))))
   `(jabber-chat-text-local ((,class (:foreground ,yellow))))
   `(jabber-chat-text-foreign ((,class (:foreground ,orange))))
   `(jabber-chat-text-error ((,class (:foreground ,red))))
   `(jabber-roster-user-online ((,class (:foreground ,green))))
   `(jabber-roster-user-xa ((,class :foreground ,faint)))
   `(jabber-roster-user-dnd ((,class :foreground ,yellow)))
   `(jabber-roster-user-away ((,class (:foreground ,orange))))
   `(jabber-roster-user-chatty ((,class (:foreground ,violet))))
   `(jabber-roster-user-error ((,class (:foreground ,red))))
   `(jabber-roster-user-offline ((,class (:foreground ,faint))))
   `(jabber-rare-time-face ((,class (:foreground ,faint))))
   `(jabber-activity-face ((,class (:foreground ,violet))))
   `(jabber-activity-personal-face ((,class (:foreground ,cyan))))

;;;;; js2-mode
   `(js2-warning-face ((,class (:underline ,yellow))))
   `(js2-error-face ((,class (:foreground nil :underline ,red))))
   `(js2-external-variable-face ((,class (:foreground ,magenta))))
   `(js2-function-param-face ((,class (:foreground ,blue))))
   `(js2-instance-member-face ((,class (:foreground ,blue))))
   `(js2-private-function-call-face ((,class (:foreground ,red))))

;;;;; js3-mode
   `(js3-warning-face ((,class (:underline ,yellow))))
   `(js3-error-face ((,class (:foreground nil :underline ,red))))
   `(js3-external-variable-face ((,class (:foreground ,magenta))))
   `(js3-function-param-face ((,class (:foreground ,blue))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,magenta))))
   `(js3-jsdoc-type-face ((,class (:foreground ,cyan))))
   `(js3-jsdoc-value-face ((,class (:foreground ,violet))))
   `(js3-jsdoc-html-tag-name-face ((,class (:foreground ,blue))))
   `(js3-jsdoc-html-tag-delimiter-face ((,class (:foreground ,green))))
   `(js3-instance-member-face ((,class (:foreground ,blue))))
   `(js3-private-function-call-face ((,class (:foreground ,red))))

;;;;; linum
   `(linum ((,class (:background ,alt-background))))

;;;;; magit
   `(magit-branch ((,class (:foreground ,green))))
   `(magit-header ((,class (:inherit nil :weight bold))))
   `(magit-item-highlight ((,class (:inherit highlight :background nil))))
   `(magit-log-graph ((,class (:foreground ,faintest))))
   `(magit-log-sha1 ((,class (:foreground ,yellow))))
   `(magit-log-head-label-bisect-bad ((,class (:foreground ,red))))
   `(magit-log-head-label-bisect-good ((,class (:foreground ,green))))
   `(magit-log-head-label-default ((,class (:foreground ,yellow :box nil :weight bold))))
   `(magit-log-head-label-local ((,class (:foreground ,magenta :box nil :weight bold))))
   `(magit-log-head-label-remote ((,class (:foreground ,violet :box nil :weight bold))))
   `(magit-log-head-label-tags ((,class (:foreground ,cyan :box nil :weight bold))))
   `(magit-section-title ((,class (:foreground ,blue :weight bold))))

;;;;; magit `next'
   `(magit-section ((,class (:inherit nil :weight bold))))
   `(magit-section-highlight ((,class (:foreground ,bright))))
   `(magit-section-heading ((,class (:foreground ,blue-bright))))
   `(magit-branch-local ((,class (:foreground ,turquoise))))
   `(magit-branch-remote ((,class (:foreground ,yellow))))
   `(magit-hash ((,class (:foreground "white"))))
   `(magit-diff-file-heading ((,class (:foreground ,yellow))))
   `(magit-diff-hunk-heading ((,class (:foreground ,magenta))))
   `(magit-diff-hunk-heading-highlight ((,class (:inherit magit-diff-hunk-heading :weight bold))))
   `(magit-diff-context ((,class (:foreground ,normal))))
   `(magit-diff-context-highlight ((,class (:inherit magit-diff-context :foreground ,bright))))
   `(magit-diff-added ((,class (:foreground ,blue))))
   `(magit-diff-added-highlight ((,class (:inherit magit-diff-added :weight bold))))
   `(magit-diff-removed ((,class (:foreground ,red-bright))))
   `(magit-diff-removed-highlight ((,class (:inherit magit-diff-removed :weight bold))))

;;;;; markdown
   `(markdown-url-face ((,class (:inherit link))))
   `(markdown-link-face ((,class (:foreground ,blue :underline t))))
   `(markdown-header-face-1 ((,class (:inherit org-level-1))))
   `(markdown-header-face-2 ((,class (:inherit org-level-2))))
   `(markdown-header-face-3 ((,class (:inherit org-level-3))))
   `(markdown-header-face-4 ((,class (:inherit org-level-4))))
   `(markdown-header-delimiter-face ((,class (:foreground ,orange))))
   `(markdown-pre-face ((,class (:foreground "white"))))
   `(markdown-code-face ((,class (:foreground "white"))))
   `(markdown-inline-code-face ((,class (:foreground "white"))))
   `(markdown-list-face ((,class (:foreground ,cyan))))

;;;;; mark-multiple
   `(mm/master-face ((,class (:inherit region :foreground nil :background nil))))
   `(mm/mirror-face ((,class (:inherit region :foreground nil :background nil))))

;;;;; message-mode
   `(message-header-other ((,class (:foreground nil :background nil :weight normal))))
   `(message-header-subject ((,class (:inherit message-header-other :weight bold :foreground ,yellow))))
   `(message-header-to ((,class (:inherit message-header-other :weight bold :foreground ,orange))))
   `(message-header-cc ((,class (:inherit message-header-to :foreground nil))))
   `(message-header-name ((,class (:foreground ,magenta :background nil))))
   `(message-header-newsgroups ((,class (:foreground ,cyan :background nil :slant normal))))
   `(message-separator ((,class (:foreground ,magenta))))

;;;;; mic-paren
   `(paren-face-match ((,class (:foreground nil :background nil :inherit show-paren-match))))
   `(paren-face-mismatch ((,class (:foreground nil :background nil :inherit show-paren-mismatch))))
   `(paren-face-no-match ((,class (:foreground nil :background nil :inherit show-paren-mismatch))))

;;;;; mmm-mode
   `(mmm-code-submode-face ((,class (:background ,alt-background))))
   `(mmm-comment-submode-face ((,class (:inherit font-lock-comment-face))))
   `(mmm-output-submode-face ((,class (:background ,alt-background))))

;;;;; nrepl-eval-sexp-fu
   `(nrepl-eval-sexp-fu-flash ((,class (:background ,magenta-dark))))

;;;;; nxml
   `(nxml-name-face ((,class (:foreground unspecified :inherit font-lock-constant-face))))
   `(nxml-attribute-local-name-face ((,class (:foreground unspecified :inherit font-lock-variable-name-face))))
   `(nxml-ref-face ((,class (:foreground unspecified :inherit font-lock-preprocessor-face))))
   `(nxml-delimiter-face ((,class (:foreground unspecified :inherit font-lock-keyword-face))))
   `(nxml-delimited-data-face ((,class (:foreground unspecified :inherit font-lock-string-face))))

;;;;; org
   `(org-agenda-structure ((,class (:foreground ,blue))))
   `(org-agenda-date ((,class (:foreground "white"))))
   `(org-agenda-done ((,class (:foreground ,green-darker))))
   `(org-agenda-dimmed-todo-face ((,class (:foreground ,faint))))
   `(org-block ((,class (:foreground ,orange))))
   `(org-code ((,class (:foreground ,yellow))))
   `(org-column ((,class (:inherit default))))
   `(org-column-title ((,class (:inherit mode-line :foreground ,magenta :weight bold :underline t))))
   `(org-date ((,class (:foreground ,blue :underline t))))
   `(org-document-info ((,class (:foreground ,pink))))
   `(org-document-info-keyword ((,class (:foreground ,pink-darker))))
   `(org-document-title ((,class (:weight bold :foreground ,yellow))))
   `(org-done ((,class (:foreground ,green))))
   `(org-ellipsis ((,class (:foreground ,faint))))
   `(org-footnote ((,class (:foreground ,cyan))))
   `(org-formula ((,class (:foreground ,orange))))
   `(org-hide ((,class (:foreground ,background :background ,background))))
   `(org-level-1 ((,class (:foreground ,blue-bright))))
   `(org-level-2 ((,class (:foreground ,blue))))
   `(org-level-3 ((,class (:foreground ,magenta-bright))))
   `(org-level-4 ((,class (:foreground ,magenta))))
   `(org-link ((,class (:foreground ,turquoise :underline t))))
   `(org-scheduled ((,class (:foreground ,yellow-darker))))
   `(org-scheduled-previously ((,class (:foreground ,orange))))
   `(org-scheduled-today ((,class (:foreground ,blue))))
   `(org-special-keyword ((,class (:foreground ,yellow-darker))))
   `(org-table ((,class (:foreground ,magenta))))
   `(org-tag ((,class (:foreground ,violet))))
   `(org-target ((,class (:foreground ,green))))
   `(org-time-grid ((,class (:inherit default))))
   `(org-todo ((,class (:foreground ,red-bright))))
   `(org-upcoming-deadline ((,class (:foreground ,yellow))))
   `(org-verbatim ((,class (:foreground ,yellow))))
   `(org-warning ((,class (:foreground ,yellow))))

;;;;; outline
   `(outline-1 ((,class (:inherit org-level-1))))
   `(outline-2 ((,class (:inherit org-level-2))))
   `(outline-3 ((,class (:inherit org-level-3))))
   `(outline-4 ((,class (:inherit org-level-4))))

;;;;; page-break-lines
   `(page-break-lines ((,class (:foreground ,faintest))))

;;;;; parenface
   `(paren-face ((,class (:foreground ,faintest :background nil))))

;;;;; powerline
   `(powerline-active1 ((t (:foreground ,normal :background ,contrast-background))))
   `(powerline-active2 ((t (:foreground ,normal :background ,alt-background))))

;;;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,normal))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,cyan))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,yellow))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,green))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,blue))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,normal))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,cyan))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,yellow))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,green))))
   `(rainbow-delimiters-unmatched-face ((,class (:foreground ,red))))

;;;;; regex-tool
   `(regex-tool-matched-face ((,class (:foreground nil :background nil :inherit match))))
   `(regex-tool-matched-face ((,class (:foreground nil :background nil :inherit match))))

;;;;; sh-script
   `(sh-heredoc ((,class (:foreground nil :inherit font-lock-string-face :weight normal))))
   `(sh-quoted-exec ((,class (:foreground nil :inherit font-lock-preprocessor-face))))

;;;;; shr
   `(shr-link ((,class (:foreground ,blue :underline t))))

;;;;; slime
   `(slime-highlight-edits-face ((,class (:foreground ,strong))))
   `(slime-repl-input-face ((,class (:weight normal :underline nil))))
   `(slime-repl-prompt-face ((,class (:underline nil :weight bold :foreground ,magenta))))
   `(slime-repl-result-face ((,class (:foreground ,green))))
   `(slime-repl-output-face ((,class (:foreground ,blue :background ,background))))

;;;;; term
   `(term ((,class (:foreground ,normal :background ,background))))
   `(term-color-black ((,class (:foreground ,faintest))))
   `(term-color-blue ((,class (:foreground ,blue))))
   `(term-color-cyan ((,class (:foreground ,cyan))))
   `(term-color-green ((,class (:foreground ,turquoise))))
   `(term-color-magenta ((,class (:foreground ,magenta))))
   `(term-color-red ((,class (:foreground ,pink))))
   `(term-color-white ((,class (:foreground ,strong))))
   `(term-color-yellow ((,class (:foreground ,yellow))))

;;;;; smart-mode-line
   `(sml/prefix ((,class (:foreground ,green-bright))))
   `(sml/folder ((,class (:foreground ,magenta-bright))))
   `(sml/filename ((,class (:foreground ,yellow))))
   `(sml/vc-edited ((,class (:foreground ,pink))))

;;;;; term
   `(term-color-black ((,class (:background ,alt-background :foreground ,alt-background))))
   `(term-color-blue ((,class (:background ,blue :foreground ,blue))))
   `(term-color-cyan ((,class (:background ,cyan :foreground ,cyan))))
   `(term-color-green ((,class (:background ,malachite :foreground ,malachite))))
   `(term-color-magenta ((,class (:background ,magenta :foreground ,magenta))))
   `(term-color-red ((,class (:background ,red :foreground ,red))))
   `(term-color-white ((,class (:background ,contrast-background :foreground ,contrast-background))))
   `(term-color-yellow ((,class (:background ,yellow :foreground ,yellow))))

;;;;; undo-tree
   `(undo-tree-visualizer-default-face ((,class (:foreground ,normal))))
   `(undo-tree-visualizer-current-face ((,class (:foreground ,green :weight bold))))
   `(undo-tree-visualizer-active-branch-face ((,class (:foreground ,red))))
   `(undo-tree-visualizer-register-face ((,class (:foreground ,yellow))))

;;;;; web-mode
   `(web-mode-html-tag-face ((,class (:foreground ,bright))))
   `(web-mode-html-attr-name-face ((,class (:inherit font-lock-doc-face))))
   `(web-mode-doctype-face ((,class (:inherit font-lock-builtin-face))))

;;;;; which-key
   `(which-key-command-description-face ((,class (:foreground ,yellow))))
   `(which-key-note-face ((,class (:foreground ,normal))))
   `(which-key-key-face ((,class (:inherit font-lock-builtin-face)))))

  (custom-theme-set-variables
   'grandshell
   `(ansi-color-names-vector [,faintest ,pink ,turquoise ,yellow ,blue ,magenta ,cyan ,normal])))

;;;; end
;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; Local Variables:
;; no-byte-compile: t
;; End:

(provide-theme 'grandshell)

;;; grandshell-theme.el ends here
