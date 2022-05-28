;;; doom-parents.el --- A set of mappings for manipulating parens and sexps -*- lexical-binding: t; -*-

;; Copyright (C) 2022  Tomek Wałkuski

;; Author: Tomek Wałkuski <doom-parents@tomekw.com>
;; Package-Requires: ((emacs "24.1"))
;; URL: https://github.com/tomekw/doom-parents
;; Version: 0.1.0

;; MIT License

;; Copyright (c) 2022 Tomek Wałkuski

;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:

;; A set of Doom Emacs mappings for manipulating parentheses and sexps

;;; Code:

(map!
 :leader
 (:prefix-map ("c" . "code")
  (:prefix ("p" . "parentheses")
   :desc "wrap round" "(" #'sp-wrap-round
   :desc "wrap square" "[" #'sp-wrap-square
   :desc "wrap curly" "{" #'sp-wrap-curly
   :desc "kill sexp" "d" #'sp-kill-sexp
   :desc "copy sexp" "y" #'sp-copy-sexp
   :desc "raise" "r" #'sp-raise-sexp
   (:prefix (">" . "right side")
    :desc "push" ")" #'sp-forward-slurp-sexp
    :desc "pull" "(" #'sp-backward-barf-sexp)
   (:prefix ("<" . "left side")
    :desc "pull" ")" #'sp-forward-barf-sexp
    :desc "push" "(" #'sp-backward-slurp-sexp))))

(provide 'doom-parents)
;;; doom-parents.el ends here
