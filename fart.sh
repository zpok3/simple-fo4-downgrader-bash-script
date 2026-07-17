#!/usr/bin/env bash

if sha1sum --status -c Fallout4.sha1; then
    echo "Fallout4.exe verification succeeded";
elif sha1sum --status -c Fallout4_og.sha1; then
    echo "Fallout 4.exe already patched"; else
    echo "Fallout4.exe verification failed, verify game files and retry"
fi

if sha1sum --status -c Fallout4Launcher.sha1; then
    echo "Fallout4Launcher.exe verification succeeded";
elif sha1sum --status -c Fallout4Launcher_og.sha1; then
    echo "Fallout4Launcher.exe already patched"; else
    echo "Fallout4Launcher.exe verification failed, verify game files and retry"
fi

if sha1sum --status -c steam_api64.sha1; then
    echo "steam_api64.dll verification succeeded";
elif sha1sum --status -c steam_api64_og.sha1; then
    echo "steam_api64.dll already patched"; else
    echo "steam_api64.dll verification failed, verify game files and retry"
fi
