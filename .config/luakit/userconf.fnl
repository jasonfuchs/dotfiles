(local settings (require :settings))
(local follow (require :follow))
(local select (require :select))

;; set the zoom to 1.33 by default
(set settings.webview.zoom_level 133)

;; enable dark mode
(set settings.application.prefer_dark_mode true)

;; use letters instead of numbers for follow
(fn select.label_maker [s]
  (let [chars (s.charset :aoeuhtnspgcrlqjkmwvz)]
    (s.trim (s.sort (s.reverse chars)))))

;; only select by hint
(set follow.pattern_maker follow.pattern_styles.match_label)
