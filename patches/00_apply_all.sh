#!/bin/sh -eux

patch -d ~/.wine/drive_c/DCS_server -i ~/patches/01_MissionScripting.lua.patch -p0 --forward --batch || true
patch -d ~/.wine/drive_c/DCS_server -i ~/patches/02_MissionScripting.lua.patch -p0 --forward --batch || true
python3 ~/patches/03_WebGUI_reverse_proxy_fix.py
