mirror
------


My mirror of the official i2p.i2p packages(Starting at 0.9.1). Has a an extra
feature where it generates a torrent for every file in the directory and an RSS
feed for every file in the directory, including torrents. The torrents also
all include a web seed which will use an official I2P mirror or this repository
to supply the torrents in the absence of a client seeding the file.

### Requirements:

mktorrent
torrent2magnet
pip3
python3-virtualenv
markdown

### Seeding

#### Follow this guide to seed the official I2P distro with BiglyBT.

- **Start the way you normally would to add a torrent:**
 - ![Start adding the torrent](0-torrent.png)
- **This time, copy this RSS feed URL into the field:**
 - ![Copy the RSS feed URL](1-torrent.png)
- **Confirm that you with to add the feed:**
 - ![Add the Feed](2-torrent.png)
- **Confirm the details:**
 - ![Confirm the details](3-torrent.png)
- **View the feed contents:**
 - ![View the feed contents](4-torrent.png)
- **Filter the feed contents so it only shows torrent files:**
 - ![filter the feed contents](5-torrent.png)
- **Download the files you want to help seed:**
 - ![Download some files](6-torrent.png)
- **Finally, if you really want to help, configure BiglyBT to automatically download**
  **new torrents from the feed.**
 - ![Auto-download the feed contents](7-torrent.png)