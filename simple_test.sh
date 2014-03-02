#!/bin/bash
expected=$(
cat << "EOF"
("#!/usr/bin/env bash" "  echo \"bash >= 4.0 required\" >&2" "#!/bin/bash" "    \"how do we replace bash?\")" "    (title \"gherkin - a lisp1 written in bash4\")" "    \"  - no real array in bash\"" "    \"Aron Griffis: bash pro tips\"")
EOF
)

actual=$(./gherkin -e '(load-file "core") (sh (str "grep -h bash " (join " " (remove (fn [x] (or (eq? "simple_test.sh" x) (eq? "README.md" x))) (sh "ls")))))')

if [[ "$expected" == "$actual" ]]; then
  echo "test 1/1 passed"
else
  echo "test 1/1 failed"
  echo "EXPECTED: $expected"
  echo "RECEIVED: $actual"
fi
