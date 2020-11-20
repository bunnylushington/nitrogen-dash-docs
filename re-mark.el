;; little hack to make marking up a slew of md files easier.
;; C-c C-c to evaluate ii/re-mark


(defun ii/re-mark ()
  (interactive)
  (let ((name (read-string "Page Name: "))
        (type (read-string "Type: "))
        (attrs (read-string "Attrs: ")))
    (save-excursion
      (goto-char (point-min))
      (insert (format "<!-- dash: %s | %s | %s -->" name type attrs))
      (open-line 2))))

(global-set-key (kbd "C-c C-c") 'ii/re-mark)
