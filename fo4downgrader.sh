#!/usr/bin/env bash

if sha1sum --status -c Fallout4.sha1; then
    echo "Fallout4.exe verification succeeded, proceeding to patch" && mv Fallout4.exe Fallout4_backup.exe && ./xdelta3 -d -s Fallout4_backup.exe patch_fo4_steam_diff.vcdiff Fallout4.exe && echo "Fallout4.exe patched!";
elif sha1sum --status -c Fallout4_og.sha1; then
    echo "Fallout4.exe already patched"; else
    echo "Fallout4.exe verification failed, verify game files and try again"
fi

if sha1sum --status -c Fallout4Launcher.sha1; then
    echo "Fallout4Launcher.exe verification succeeded, proceeding to patch" && mv Fallout4Launcher.exe Fallout4Launcher_backup.exe && ./xdelta3 -d -s Fallout4Launcher_backup.exe patch_fo4steamlaunch_diff.vcdiff Fallout4Launcher.exe && echo "Fallout4Launcher.exe patched!";
elif sha1sum --status -c Fallout4Launcher_og.sha1; then
    echo "Fallout4Launcher.exe already patched"; else
    echo "Fallout4Launcher.exe verification failed, verify game files and try again"
fi

if sha1sum --status -c steam_api64.sha1; then
    echo "steam_api64.dll verification succeeded, proceeding to patch" && mv steam_api64.dll steam_api64_backup.dll && ./xdelta3 -d -s steam_api64_backup.dll patch_steam_api_diff.vcdiff steam_api64.dll && echo "steam_api64.dll patched!";
elif sha1sum --status -c steam_api64_og.sha1; then
    echo "steam_api64.dll already patched"; else
    echo "steam_api64.dll verification failed, verify game files and try again"
fi
