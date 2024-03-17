#!/usr/bin/bash

pycodestyle circle_calc.py
# linting fot area.py
EXIT_CODE=$?

pycodestyle test_area.py
EXIT_CODE_1=$?

python -m unittest test_area.py
EXIT_CODE_2=$?


if [ $EXIT_CODE -ne 0 ] || [ $EXIT_CODE_1 -ne 0 ] || [ $EXIT_CODE_2 -ne 0 ]; then
    echo "please fix code"
    exit 1
else
    exit 0
fi

