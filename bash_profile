if [ -n "$PYTHONPATH" ]; then
    export PYTHONPATH='/home/ss108/.local/share/pdm/venv/lib/python3.10/site-packages/pdm/pep582':$PYTHONPATH
else
    export PYTHONPATH='/home/ss108/.local/share/pdm/venv/lib/python3.10/site-packages/pdm/pep582'
fi
