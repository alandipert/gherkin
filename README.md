# gherkin

<img src="https://dl.dropboxusercontent.com/u/12379861/gherkin_logo.png" alt="gherkin logo" title="gherkin logo" align="right" width="96" />

gherkin is a functional programming language and interpreter written in [GNU Bash 4](http://www.gnu.org/software/bash/) designed for extreme portability across *nix platforms.  For rationale, see [Why gherkin?](https://github.com/alandipert/gherkin/wiki/Why-gherkin%3F)

gherkin is a dialect of [Lisp](http://en.wikipedia.org/wiki/Lisp), and like other Lisps such as [Clojure](http://clojure.org/) and [Scheme](http://en.wikipedia.org/wiki/Scheme_(programming_language) it features homoiconicity, first-class functions, and primitive functions for operating on a variety of data types such as strings, integers, symbols, and lists.  As a citizen of *nix and the shell environment, it also provides *nix and shell interoperation facilities.

gherkin is currently **alpha** status, but our hope is to continue feature development until gherkin can be used in place of Bash for general purpose *nix scripting.  If you're curious about our progress toward our first release, see [our milestones](https://github.com/alandipert/gherkin/issues/milestones).

## Try gherkin

#### REPL

Start a Read-Evaluate-Print-Loop ([REPL](http://en.wikipedia.org/wiki/REPL)) and evaluate a simple expression:

    ./gherkin
    > (+ 1 2)
    3

You may exit the REPL with Ctrl-D.

#### Running a script

Run [fib.gk](fib.gk) to find the 60th [Fibonacci number](http://en.wikipedia.org/wiki/Fibonacci_number):

    ./gherkin -l fib.gk
    
#### Start a REPL and try a [core library](core.gk) function:

    ./gherkin
    > (load-file "core")
    nil
    > (map inc '(1 2 3))
    (2 3 4)
    
You may also load the core library and start a REPL with `./gherkin -l core.gk -r`.

## Learning more & getting involved

gherkin is brand new, under active development, and not yet formally released.  As such, its usage is error-prone and its documentation spotty.  If you'd like to help us improve gherkin or have any questions, please join us in `#gherkin` on `irc.freenode.net`.

## Related tools

* [gherkin-mode](https://github.com/candera/gherkin-mode) is an [Emacs](http://www.gnu.org/software/emacs/) mode for editing gherkin contributed by [Craig Andera](https://github.com/candera)

# Thanks

* to [Darius Bacon](http://wry.me/blog/) for his version of [awklisp](https://github.com/darius/awklisp) which was the basis for the original prototype
