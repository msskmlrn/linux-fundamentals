#!/bin/bash
foo="bar"
echo "Within first shell (pid $BASHPID): \$foo=$foo"
/bin/bash -c "echo \"Within second shell (pid \$BASHPID): \\\$foo=\$foo\""
