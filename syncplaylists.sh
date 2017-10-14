#!/usr/bin/env bash
set -e

# Location of your iTunes music library xml file.
# It shouldn't touch this, but back up just to be safe!
xml_location=~/Music/iTunes/iTunes\ Library.xml

# Location of your iTunes music media (actual music files)
# Must include final slash
music_location=~/Music/iTunes/iTunes\ Media/Music/

#location to export playlist files (m3u8)
# Must include final slash
playlists_folder=~/Music/iTunes/iTunes\ Media/Music/

############################

echo "PorcoRosso, 2017"

echo ""
echo "deleting old playlist files"
rm "$playlists_folder"*.m3u8 || echo "no playlists to delete"

# Generate playlists from iTunes
echo "Generating playlists from iTunes..."
java -jar iTunesExportScala-2.2.2/Itunesexport.jar -library="$xml_location" -outputDir="$playlists_folder" -useM3U8Ext -musicPath=""

# Rename paths in M3U playlist files to be relative
echo ""
echo "Generating playlists to be relative..."
sed -i -- 's/Music\///g' "$playlists_folder"*.m3u8

echo "Deleting temp playlist files"
rm "$playlists_folder"*.m3u8--

echo ""
echo "Done! Run again to update."
