(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(setq org-todo-keywords
       '((sequence "TODO" "WAITING" "MONITOR" "VERIFY" "FEEDBACK" "|" "DONE" "DELEGATED" "ONHOLD")))
