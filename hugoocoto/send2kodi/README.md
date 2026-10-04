# send2kodi

Sends YouTube links, anything else yt-dlp can play, links to media files and streams, and the videos, music and pictures on your computer to Kodi, from the command line. Local files are streamed to Kodi by a small built-in HTTP server, subtitles included. Source at [hugoocoto/send2kodi](https://github.com/hugoocoto/send2kodi).

**Tech stack:** Python 3 (standard library only), Kodi JSON-RPC.

**Type:** CLI media sender.

## Use

```
send2kodi https://youtu.be/...      # play a link
send2kodi ~/Videos/movie.mkv        # play a file from this machine
send2kodi ~/Videos/Some.Show/       # play a folder, in order
send2kodi -q URL_OR_FILE ...        # add to the queue
```

Set the Kodi box's address once in `~/.config/send2kodi/config` (`KODI_HOST=192.168.1.50`), or pass `--host` each time. Kodi needs *Settings → Services → Control → Allow remote control via HTTP*, plus the SendToKodi and YouTube add-ons for links.
