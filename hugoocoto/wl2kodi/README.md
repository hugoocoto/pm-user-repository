# wl2kodi

Low-latency screen mirroring from a wlroots Wayland desktop (Hyprland, Sway, river, …) to Kodi. The sender's GPU captures and encodes H.264, and Kodi plays it as a plain MPEG-TS stream over UDP with hardware decoding, so even a Raspberry Pi receiver stays nearly idle. Source at [hugoocoto/wl2kodi](https://github.com/hugoocoto/wl2kodi).

**Tech stack:** Bash, wf-recorder (VAAPI), Kodi JSON-RPC.

**Type:** Wayland screen mirroring.

## Use

```
wl2kodi -t 192.168.1.50             # mirror the first monitor to that Kodi box
wl2kodi -t 192.168.1.50 -m fill -r 720
```

Ctrl-C stops it. Kodi needs *Settings → Services → Control → Allow remote control via HTTP*.

Dependencies (Arch): `wf-recorder curl`, and a VAAPI-capable GPU.
