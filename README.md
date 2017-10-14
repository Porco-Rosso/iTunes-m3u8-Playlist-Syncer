iTunes m3u8 Playlist Syncer
====================

>Free your playlists from Apple's grasp!

>   Simple script to export your playlists from iTunes' XML database to m3u8 playlist files. Made this because I needed something to sync my playlists to my android device using Resilio Sync (formerly BtSync).



Based off of Jake Coppinger's [andorid-itunes-sync](https://github.com/jakecoppinger/android-itunes-rsync). <sub>thanks!</sub>

# How this works
- Exports m3u8 playlist files from iTunes using the incredible command line utility [iTunesExportScala](http://www.ericdaugherty.com/dev/itunesexport/)  by Eric Daugherty, also available on the [Mac App Store](https://itunes.apple.com/us/app/playlist-export/id434426826?mt=12&ls=1).

- Dumps the m3u8 playlists into the default iTunes music folder `~/Music/iTunes/iTunes\ Media/Music/`

- Renames m3u8 playlist paths so that they are relative (iTunes uses absolute paths)

- Notice this is **one way synchronization** and won't update your iTunes playlists/library. It also only exports the playlist and **not the music files**.

# Getting started

This is very new and probably buggy, so make sure you have a backup of your iTunes library just in case!

1. Backup your iTunes Library and media!

2. Edit script with proper locations if needed (.xml, music and playlist locations)

3. Check script permissions, make it executable: `chmod +x syncplaylists.sh`

4. Run script `./syncplaylists.sh`


----


## iTunesExportScale licence
Copyright (c) 2009, Eric Daugherty (http://www.ericdaugherty.com)
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Eric Daugherty nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
THE POSSIBILITY OF SUCH DAMAGE.
