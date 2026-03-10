#!/bin/bash
export DISPLAY=:11.0
export XAUTHORITY=/root/.Xauthority
new_args=()
for arg in "$@"; do
    if [[ "$arg" != "--headless" && "$arg" != "--headless=new" && "$arg" != "about:blank" ]]; then
        new_args+=("$arg")
    fi
done
exec /usr/bin/google-chrome --window-size=1280,800 --window-position=0,0 --disable-gpu --disable-software-rasterizer --disable-dev-shm-usage --disable-background-networking --disable-background-timer-throttling --disable-backgrounding-occluded-windows --disable-breakpad --disable-component-extensions-with-background-pages --disable-features=TranslateUI,BlinkGenPropertyTrees --disable-ipc-flooding-protection --enable-features=NetworkService,NetworkServiceInProcess --force-color-profile=srgb --metrics-recording-only --mute-audio "$@" 2>/dev/null
