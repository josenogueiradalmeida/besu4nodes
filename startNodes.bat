for /l %%x in (1, 1, 4) do  (
    echo %%x
    cd node%%x
    cd data
    del /Q /S besu.networks
    del /Q /S besu.ports
    del /Q /S caches
    del /Q /S database
    del /Q /S DATABASE_METADATA.json
    del /Q /S uploads
    cd ..
    start "NODE%%x" besu --config-file=configNode.toml
    cd ..
    pause
)
echo.
echo INICIADOS OS QUATRO NODES
echo. 