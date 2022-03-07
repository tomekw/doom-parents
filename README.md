# doom-parents
A set of Doom Emacs mappings for manipulating parentheses and sexps

## Installation

```lisp
;; ~/.doom.d/packages.el

(package! doom-parents
  :recipe (:host github :repo "tomekw/doom-parents"))

;; ~/.doom.d/config.el

(use-package! doom-parents)
```

and then:

```shell
$ doom sync
```

## Usage

1. Wrap sexp in round parentheses

   `SPC` - `c` -`p` - `(`

1. Wrap sexp in square parentheses

   `SPC` - `c` -`p` - `[`

1. Wrap sexp in curly parentheses

   `SPC` - `c` -`p` - `{`

1. Raise sexp

   `SPC` - `c` -`p` - `r`

1. Push parenthesis to the right

   `SPC` - `c` -`p` - `>` - `)`

1. Push parenthesis to the left

   `SPC` - `c` -`p` - `<` - `(`

1. Pull parenthesis from the right

   `SPC` - `c` -`p` - `<` - `)`

1. Pull parenthesis from the left

   `SPC` - `c` -`p` - `>` - `(`
