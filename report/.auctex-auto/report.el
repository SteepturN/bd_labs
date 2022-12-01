(TeX-add-style-hook
 "report"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "pdf" "unicode" "12pt" "a4paper" "oneside" "fleqn")))
   (TeX-run-style-hooks
    "latex2e"
    "src/titlepage"
    "../tmp_try"
    "src/literature"
    "article"
    "art12"
    "styles/log-style"))
 :latex)

